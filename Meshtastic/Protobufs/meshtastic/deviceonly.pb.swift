// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: meshtastic/deviceonly.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

///
/// TODO: REPLACE
enum ScreenFonts: SwiftProtobuf.Enum {
  typealias RawValue = Int

  ///
  /// TODO: REPLACE
  case fontSmall // = 0

  ///
  /// TODO: REPLACE
  case fontMedium // = 1

  ///
  /// TODO: REPLACE
  case fontLarge // = 2
  case UNRECOGNIZED(Int)

  init() {
    self = .fontSmall
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .fontSmall
    case 1: self = .fontMedium
    case 2: self = .fontLarge
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .fontSmall: return 0
    case .fontMedium: return 1
    case .fontLarge: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension ScreenFonts: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [ScreenFonts] = [
    .fontSmall,
    .fontMedium,
    .fontLarge,
  ]
}

#endif  // swift(>=4.2)

///
/// This message is never sent over the wire, but it is used for serializing DB
/// state to flash in the device code
/// FIXME, since we write this each time we enter deep sleep (and have infinite
/// flash) it would be better to use some sort of append only data structure for
/// the receive queue and use the preferences store for the other stuff
struct DeviceState {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///
  /// Read only settings/info about this node
  var myNode: MyNodeInfo {
    get {return _storage._myNode ?? MyNodeInfo()}
    set {_uniqueStorage()._myNode = newValue}
  }
  /// Returns true if `myNode` has been explicitly set.
  var hasMyNode: Bool {return _storage._myNode != nil}
  /// Clears the value of `myNode`. Subsequent reads from it will return its default value.
  mutating func clearMyNode() {_uniqueStorage()._myNode = nil}

  ///
  /// My owner info
  var owner: User {
    get {return _storage._owner ?? User()}
    set {_uniqueStorage()._owner = newValue}
  }
  /// Returns true if `owner` has been explicitly set.
  var hasOwner: Bool {return _storage._owner != nil}
  /// Clears the value of `owner`. Subsequent reads from it will return its default value.
  mutating func clearOwner() {_uniqueStorage()._owner = nil}

  ///
  /// Received packets saved for delivery to the phone
  var receiveQueue: [MeshPacket] {
    get {return _storage._receiveQueue}
    set {_uniqueStorage()._receiveQueue = newValue}
  }

  ///
  /// A version integer used to invalidate old save files when we make
  /// incompatible changes This integer is set at build time and is private to
  /// NodeDB.cpp in the device code.
  var version: UInt32 {
    get {return _storage._version}
    set {_uniqueStorage()._version = newValue}
  }

  ///
  /// We keep the last received text message (only) stored in the device flash,
  /// so we can show it on the screen.
  /// Might be null
  var rxTextMessage: MeshPacket {
    get {return _storage._rxTextMessage ?? MeshPacket()}
    set {_uniqueStorage()._rxTextMessage = newValue}
  }
  /// Returns true if `rxTextMessage` has been explicitly set.
  var hasRxTextMessage: Bool {return _storage._rxTextMessage != nil}
  /// Clears the value of `rxTextMessage`. Subsequent reads from it will return its default value.
  mutating func clearRxTextMessage() {_uniqueStorage()._rxTextMessage = nil}

  ///
  /// Used only during development.
  /// Indicates developer is testing and changes should never be saved to flash.
  var noSave: Bool {
    get {return _storage._noSave}
    set {_uniqueStorage()._noSave = newValue}
  }

  ///
  /// Some GPS receivers seem to have bogus settings from the factory, so we always do one factory reset.
  var didGpsReset: Bool {
    get {return _storage._didGpsReset}
    set {_uniqueStorage()._didGpsReset = newValue}
  }

  ///
  /// We keep the last received waypoint stored in the device flash,
  /// so we can show it on the screen.
  /// Might be null
  var rxWaypoint: MeshPacket {
    get {return _storage._rxWaypoint ?? MeshPacket()}
    set {_uniqueStorage()._rxWaypoint = newValue}
  }
  /// Returns true if `rxWaypoint` has been explicitly set.
  var hasRxWaypoint: Bool {return _storage._rxWaypoint != nil}
  /// Clears the value of `rxWaypoint`. Subsequent reads from it will return its default value.
  mutating func clearRxWaypoint() {_uniqueStorage()._rxWaypoint = nil}

  ///
  /// The mesh's nodes with their available gpio pins for RemoteHardware module
  var nodeRemoteHardwarePins: [NodeRemoteHardwarePin] {
    get {return _storage._nodeRemoteHardwarePins}
    set {_uniqueStorage()._nodeRemoteHardwarePins = newValue}
  }

  ///
  /// New lite version of NodeDB to decrease memory footprint
  var nodeDbLite: [NodeInfoLite] {
    get {return _storage._nodeDbLite}
    set {_uniqueStorage()._nodeDbLite = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct NodeInfoLite {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///
  /// The node number
  var num: UInt32 {
    get {return _storage._num}
    set {_uniqueStorage()._num = newValue}
  }

  ///
  /// The user info for this node
  var user: User {
    get {return _storage._user ?? User()}
    set {_uniqueStorage()._user = newValue}
  }
  /// Returns true if `user` has been explicitly set.
  var hasUser: Bool {return _storage._user != nil}
  /// Clears the value of `user`. Subsequent reads from it will return its default value.
  mutating func clearUser() {_uniqueStorage()._user = nil}

  ///
  /// This position data. Note: before 1.2.14 we would also store the last time we've heard from this node in position.time, that is no longer true.
  /// Position.time now indicates the last time we received a POSITION from that node.
  var position: PositionLite {
    get {return _storage._position ?? PositionLite()}
    set {_uniqueStorage()._position = newValue}
  }
  /// Returns true if `position` has been explicitly set.
  var hasPosition: Bool {return _storage._position != nil}
  /// Clears the value of `position`. Subsequent reads from it will return its default value.
  mutating func clearPosition() {_uniqueStorage()._position = nil}

  ///
  /// Returns the Signal-to-noise ratio (SNR) of the last received message,
  /// as measured by the receiver. Return SNR of the last received message in dB
  var snr: Float {
    get {return _storage._snr}
    set {_uniqueStorage()._snr = newValue}
  }

  ///
  /// Set to indicate the last time we received a packet from this node
  var lastHeard: UInt32 {
    get {return _storage._lastHeard}
    set {_uniqueStorage()._lastHeard = newValue}
  }

  ///
  /// The latest device metrics for the node.
  var deviceMetrics: DeviceMetrics {
    get {return _storage._deviceMetrics ?? DeviceMetrics()}
    set {_uniqueStorage()._deviceMetrics = newValue}
  }
  /// Returns true if `deviceMetrics` has been explicitly set.
  var hasDeviceMetrics: Bool {return _storage._deviceMetrics != nil}
  /// Clears the value of `deviceMetrics`. Subsequent reads from it will return its default value.
  mutating func clearDeviceMetrics() {_uniqueStorage()._deviceMetrics = nil}

  ///
  /// local channel index we heard that node on. Only populated if its not the default channel.
  var channel: UInt32 {
    get {return _storage._channel}
    set {_uniqueStorage()._channel = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

///
/// Position with static location information only for NodeDBLite
struct PositionLite {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///
  /// The new preferred location encoding, multiply by 1e-7 to get degrees
  /// in floating point
  var latitudeI: Int32 = 0

  ///
  /// TODO: REPLACE
  var longitudeI: Int32 = 0

  ///
  /// In meters above MSL (but see issue #359)
  var altitude: Int32 = 0

  ///
  /// This is usually not sent over the mesh (to save space), but it is sent
  /// from the phone so that the local device can set its RTC If it is sent over
  /// the mesh (because there are devices on the mesh without GPS), it will only
  /// be sent by devices which has a hardware GPS clock.
  /// seconds since 1970
  var time: UInt32 = 0

  ///
  /// TODO: REPLACE
  var locationSource: Position.LocSource = .locUnset

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

///
/// The on-disk saved channels
struct ChannelFile {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///
  /// The channels our node knows about
  var channels: [Channel] = []

  ///
  /// A version integer used to invalidate old save files when we make
  /// incompatible changes This integer is set at build time and is private to
  /// NodeDB.cpp in the device code.
  var version: UInt32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

///
/// This can be used for customizing the firmware distribution. If populated,
/// show a secondary bootup screen with custom logo and text for 2.5 seconds.
struct OEMStore {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///
  /// The Logo width in Px
  var oemIconWidth: UInt32 = 0

  ///
  /// The Logo height in Px
  var oemIconHeight: UInt32 = 0

  ///
  /// The Logo in XBM bytechar format
  var oemIconBits: Data = Data()

  ///
  /// Use this font for the OEM text.
  var oemFont: ScreenFonts = .fontSmall

  ///
  /// Use this font for the OEM text.
  var oemText: String = String()

  ///
  /// The default device encryption key, 16 or 32 byte
  var oemAesKey: Data = Data()

  ///
  /// A Preset LocalConfig to apply during factory reset
  var oemLocalConfig: LocalConfig {
    get {return _oemLocalConfig ?? LocalConfig()}
    set {_oemLocalConfig = newValue}
  }
  /// Returns true if `oemLocalConfig` has been explicitly set.
  var hasOemLocalConfig: Bool {return self._oemLocalConfig != nil}
  /// Clears the value of `oemLocalConfig`. Subsequent reads from it will return its default value.
  mutating func clearOemLocalConfig() {self._oemLocalConfig = nil}

  ///
  /// A Preset LocalModuleConfig to apply during factory reset
  var oemLocalModuleConfig: LocalModuleConfig {
    get {return _oemLocalModuleConfig ?? LocalModuleConfig()}
    set {_oemLocalModuleConfig = newValue}
  }
  /// Returns true if `oemLocalModuleConfig` has been explicitly set.
  var hasOemLocalModuleConfig: Bool {return self._oemLocalModuleConfig != nil}
  /// Clears the value of `oemLocalModuleConfig`. Subsequent reads from it will return its default value.
  mutating func clearOemLocalModuleConfig() {self._oemLocalModuleConfig = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _oemLocalConfig: LocalConfig? = nil
  fileprivate var _oemLocalModuleConfig: LocalModuleConfig? = nil
}

///
/// RemoteHardwarePins associated with a node
struct NodeRemoteHardwarePin {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///
  /// The node_num exposing the available gpio pin
  var nodeNum: UInt32 = 0

  ///
  /// The the available gpio pin for usage with RemoteHardware module
  var pin: RemoteHardwarePin {
    get {return _pin ?? RemoteHardwarePin()}
    set {_pin = newValue}
  }
  /// Returns true if `pin` has been explicitly set.
  var hasPin: Bool {return self._pin != nil}
  /// Clears the value of `pin`. Subsequent reads from it will return its default value.
  mutating func clearPin() {self._pin = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _pin: RemoteHardwarePin? = nil
}

#if swift(>=5.5) && canImport(_Concurrency)
extension ScreenFonts: @unchecked Sendable {}
extension DeviceState: @unchecked Sendable {}
extension NodeInfoLite: @unchecked Sendable {}
extension PositionLite: @unchecked Sendable {}
extension ChannelFile: @unchecked Sendable {}
extension OEMStore: @unchecked Sendable {}
extension NodeRemoteHardwarePin: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "meshtastic"

extension ScreenFonts: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "FONT_SMALL"),
    1: .same(proto: "FONT_MEDIUM"),
    2: .same(proto: "FONT_LARGE"),
  ]
}

extension DeviceState: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".DeviceState"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .standard(proto: "my_node"),
    3: .same(proto: "owner"),
    5: .standard(proto: "receive_queue"),
    8: .same(proto: "version"),
    7: .standard(proto: "rx_text_message"),
    9: .standard(proto: "no_save"),
    11: .standard(proto: "did_gps_reset"),
    12: .standard(proto: "rx_waypoint"),
    13: .standard(proto: "node_remote_hardware_pins"),
    14: .standard(proto: "node_db_lite"),
  ]

  fileprivate class _StorageClass {
    var _myNode: MyNodeInfo? = nil
    var _owner: User? = nil
    var _receiveQueue: [MeshPacket] = []
    var _version: UInt32 = 0
    var _rxTextMessage: MeshPacket? = nil
    var _noSave: Bool = false
    var _didGpsReset: Bool = false
    var _rxWaypoint: MeshPacket? = nil
    var _nodeRemoteHardwarePins: [NodeRemoteHardwarePin] = []
    var _nodeDbLite: [NodeInfoLite] = []

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _myNode = source._myNode
      _owner = source._owner
      _receiveQueue = source._receiveQueue
      _version = source._version
      _rxTextMessage = source._rxTextMessage
      _noSave = source._noSave
      _didGpsReset = source._didGpsReset
      _rxWaypoint = source._rxWaypoint
      _nodeRemoteHardwarePins = source._nodeRemoteHardwarePins
      _nodeDbLite = source._nodeDbLite
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 2: try { try decoder.decodeSingularMessageField(value: &_storage._myNode) }()
        case 3: try { try decoder.decodeSingularMessageField(value: &_storage._owner) }()
        case 5: try { try decoder.decodeRepeatedMessageField(value: &_storage._receiveQueue) }()
        case 7: try { try decoder.decodeSingularMessageField(value: &_storage._rxTextMessage) }()
        case 8: try { try decoder.decodeSingularUInt32Field(value: &_storage._version) }()
        case 9: try { try decoder.decodeSingularBoolField(value: &_storage._noSave) }()
        case 11: try { try decoder.decodeSingularBoolField(value: &_storage._didGpsReset) }()
        case 12: try { try decoder.decodeSingularMessageField(value: &_storage._rxWaypoint) }()
        case 13: try { try decoder.decodeRepeatedMessageField(value: &_storage._nodeRemoteHardwarePins) }()
        case 14: try { try decoder.decodeRepeatedMessageField(value: &_storage._nodeDbLite) }()
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every if/case branch local when no optimizations
      // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
      // https://github.com/apple/swift-protobuf/issues/1182
      try { if let v = _storage._myNode {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      } }()
      try { if let v = _storage._owner {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      } }()
      if !_storage._receiveQueue.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._receiveQueue, fieldNumber: 5)
      }
      try { if let v = _storage._rxTextMessage {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      } }()
      if _storage._version != 0 {
        try visitor.visitSingularUInt32Field(value: _storage._version, fieldNumber: 8)
      }
      if _storage._noSave != false {
        try visitor.visitSingularBoolField(value: _storage._noSave, fieldNumber: 9)
      }
      if _storage._didGpsReset != false {
        try visitor.visitSingularBoolField(value: _storage._didGpsReset, fieldNumber: 11)
      }
      try { if let v = _storage._rxWaypoint {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 12)
      } }()
      if !_storage._nodeRemoteHardwarePins.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._nodeRemoteHardwarePins, fieldNumber: 13)
      }
      if !_storage._nodeDbLite.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._nodeDbLite, fieldNumber: 14)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: DeviceState, rhs: DeviceState) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._myNode != rhs_storage._myNode {return false}
        if _storage._owner != rhs_storage._owner {return false}
        if _storage._receiveQueue != rhs_storage._receiveQueue {return false}
        if _storage._version != rhs_storage._version {return false}
        if _storage._rxTextMessage != rhs_storage._rxTextMessage {return false}
        if _storage._noSave != rhs_storage._noSave {return false}
        if _storage._didGpsReset != rhs_storage._didGpsReset {return false}
        if _storage._rxWaypoint != rhs_storage._rxWaypoint {return false}
        if _storage._nodeRemoteHardwarePins != rhs_storage._nodeRemoteHardwarePins {return false}
        if _storage._nodeDbLite != rhs_storage._nodeDbLite {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension NodeInfoLite: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".NodeInfoLite"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "num"),
    2: .same(proto: "user"),
    3: .same(proto: "position"),
    4: .same(proto: "snr"),
    5: .standard(proto: "last_heard"),
    6: .standard(proto: "device_metrics"),
    7: .same(proto: "channel"),
  ]

  fileprivate class _StorageClass {
    var _num: UInt32 = 0
    var _user: User? = nil
    var _position: PositionLite? = nil
    var _snr: Float = 0
    var _lastHeard: UInt32 = 0
    var _deviceMetrics: DeviceMetrics? = nil
    var _channel: UInt32 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _num = source._num
      _user = source._user
      _position = source._position
      _snr = source._snr
      _lastHeard = source._lastHeard
      _deviceMetrics = source._deviceMetrics
      _channel = source._channel
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularUInt32Field(value: &_storage._num) }()
        case 2: try { try decoder.decodeSingularMessageField(value: &_storage._user) }()
        case 3: try { try decoder.decodeSingularMessageField(value: &_storage._position) }()
        case 4: try { try decoder.decodeSingularFloatField(value: &_storage._snr) }()
        case 5: try { try decoder.decodeSingularFixed32Field(value: &_storage._lastHeard) }()
        case 6: try { try decoder.decodeSingularMessageField(value: &_storage._deviceMetrics) }()
        case 7: try { try decoder.decodeSingularUInt32Field(value: &_storage._channel) }()
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every if/case branch local when no optimizations
      // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
      // https://github.com/apple/swift-protobuf/issues/1182
      if _storage._num != 0 {
        try visitor.visitSingularUInt32Field(value: _storage._num, fieldNumber: 1)
      }
      try { if let v = _storage._user {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      } }()
      try { if let v = _storage._position {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      } }()
      if _storage._snr != 0 {
        try visitor.visitSingularFloatField(value: _storage._snr, fieldNumber: 4)
      }
      if _storage._lastHeard != 0 {
        try visitor.visitSingularFixed32Field(value: _storage._lastHeard, fieldNumber: 5)
      }
      try { if let v = _storage._deviceMetrics {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      } }()
      if _storage._channel != 0 {
        try visitor.visitSingularUInt32Field(value: _storage._channel, fieldNumber: 7)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: NodeInfoLite, rhs: NodeInfoLite) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._num != rhs_storage._num {return false}
        if _storage._user != rhs_storage._user {return false}
        if _storage._position != rhs_storage._position {return false}
        if _storage._snr != rhs_storage._snr {return false}
        if _storage._lastHeard != rhs_storage._lastHeard {return false}
        if _storage._deviceMetrics != rhs_storage._deviceMetrics {return false}
        if _storage._channel != rhs_storage._channel {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension PositionLite: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".PositionLite"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "latitude_i"),
    2: .standard(proto: "longitude_i"),
    3: .same(proto: "altitude"),
    4: .same(proto: "time"),
    5: .standard(proto: "location_source"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularSFixed32Field(value: &self.latitudeI) }()
      case 2: try { try decoder.decodeSingularSFixed32Field(value: &self.longitudeI) }()
      case 3: try { try decoder.decodeSingularInt32Field(value: &self.altitude) }()
      case 4: try { try decoder.decodeSingularFixed32Field(value: &self.time) }()
      case 5: try { try decoder.decodeSingularEnumField(value: &self.locationSource) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.latitudeI != 0 {
      try visitor.visitSingularSFixed32Field(value: self.latitudeI, fieldNumber: 1)
    }
    if self.longitudeI != 0 {
      try visitor.visitSingularSFixed32Field(value: self.longitudeI, fieldNumber: 2)
    }
    if self.altitude != 0 {
      try visitor.visitSingularInt32Field(value: self.altitude, fieldNumber: 3)
    }
    if self.time != 0 {
      try visitor.visitSingularFixed32Field(value: self.time, fieldNumber: 4)
    }
    if self.locationSource != .locUnset {
      try visitor.visitSingularEnumField(value: self.locationSource, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: PositionLite, rhs: PositionLite) -> Bool {
    if lhs.latitudeI != rhs.latitudeI {return false}
    if lhs.longitudeI != rhs.longitudeI {return false}
    if lhs.altitude != rhs.altitude {return false}
    if lhs.time != rhs.time {return false}
    if lhs.locationSource != rhs.locationSource {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ChannelFile: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ChannelFile"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "channels"),
    2: .same(proto: "version"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.channels) }()
      case 2: try { try decoder.decodeSingularUInt32Field(value: &self.version) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.channels.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.channels, fieldNumber: 1)
    }
    if self.version != 0 {
      try visitor.visitSingularUInt32Field(value: self.version, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ChannelFile, rhs: ChannelFile) -> Bool {
    if lhs.channels != rhs.channels {return false}
    if lhs.version != rhs.version {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension OEMStore: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".OEMStore"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "oem_icon_width"),
    2: .standard(proto: "oem_icon_height"),
    3: .standard(proto: "oem_icon_bits"),
    4: .standard(proto: "oem_font"),
    5: .standard(proto: "oem_text"),
    6: .standard(proto: "oem_aes_key"),
    7: .standard(proto: "oem_local_config"),
    8: .standard(proto: "oem_local_module_config"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self.oemIconWidth) }()
      case 2: try { try decoder.decodeSingularUInt32Field(value: &self.oemIconHeight) }()
      case 3: try { try decoder.decodeSingularBytesField(value: &self.oemIconBits) }()
      case 4: try { try decoder.decodeSingularEnumField(value: &self.oemFont) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.oemText) }()
      case 6: try { try decoder.decodeSingularBytesField(value: &self.oemAesKey) }()
      case 7: try { try decoder.decodeSingularMessageField(value: &self._oemLocalConfig) }()
      case 8: try { try decoder.decodeSingularMessageField(value: &self._oemLocalModuleConfig) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.oemIconWidth != 0 {
      try visitor.visitSingularUInt32Field(value: self.oemIconWidth, fieldNumber: 1)
    }
    if self.oemIconHeight != 0 {
      try visitor.visitSingularUInt32Field(value: self.oemIconHeight, fieldNumber: 2)
    }
    if !self.oemIconBits.isEmpty {
      try visitor.visitSingularBytesField(value: self.oemIconBits, fieldNumber: 3)
    }
    if self.oemFont != .fontSmall {
      try visitor.visitSingularEnumField(value: self.oemFont, fieldNumber: 4)
    }
    if !self.oemText.isEmpty {
      try visitor.visitSingularStringField(value: self.oemText, fieldNumber: 5)
    }
    if !self.oemAesKey.isEmpty {
      try visitor.visitSingularBytesField(value: self.oemAesKey, fieldNumber: 6)
    }
    try { if let v = self._oemLocalConfig {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    } }()
    try { if let v = self._oemLocalModuleConfig {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: OEMStore, rhs: OEMStore) -> Bool {
    if lhs.oemIconWidth != rhs.oemIconWidth {return false}
    if lhs.oemIconHeight != rhs.oemIconHeight {return false}
    if lhs.oemIconBits != rhs.oemIconBits {return false}
    if lhs.oemFont != rhs.oemFont {return false}
    if lhs.oemText != rhs.oemText {return false}
    if lhs.oemAesKey != rhs.oemAesKey {return false}
    if lhs._oemLocalConfig != rhs._oemLocalConfig {return false}
    if lhs._oemLocalModuleConfig != rhs._oemLocalModuleConfig {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension NodeRemoteHardwarePin: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".NodeRemoteHardwarePin"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "node_num"),
    2: .same(proto: "pin"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self.nodeNum) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._pin) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.nodeNum != 0 {
      try visitor.visitSingularUInt32Field(value: self.nodeNum, fieldNumber: 1)
    }
    try { if let v = self._pin {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: NodeRemoteHardwarePin, rhs: NodeRemoteHardwarePin) -> Bool {
    if lhs.nodeNum != rhs.nodeNum {return false}
    if lhs._pin != rhs._pin {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

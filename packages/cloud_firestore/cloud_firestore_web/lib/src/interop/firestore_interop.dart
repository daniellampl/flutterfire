// ignore_for_file: require_trailing_commas
// Copyright 2020, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: public_member_api_docs

@JS('firebase_firestore')
library firebase_interop.firestore;

import './firestore.dart';
import 'package:firebase_core_web/firebase_core_web_interop.dart';
import 'dart:typed_data' show Uint8List;

import 'package:js/js.dart';

@JS()
external FirestoreJsImpl getFirestore([AppJsImpl? app]);

@JS()
external PromiseJsImpl<DocumentReferenceJsImpl> addDoc(
  CollectionReferenceJsImpl reference,
  dynamic data,
);

@JS()
// TODO arrayRemove

@JS()
// TODO arrayRemove

@JS()
// TODO arrayUnion

@JS()
external PromiseJsImpl<void> clearIndexedDbPersistence(
  FirestoreJsImpl firestore,
);

@JS()
external CollectionReferenceJsImpl collection(
  FirestoreJsImpl firestore,
  String collectionPath,
);

@JS()
external QueryJsImpl collectionGroup(
  FirestoreJsImpl firestore,
  String collectionId,
);

@JS()
external void connectFirestoreEmulator(
  FirestoreJsImpl firestore,
  String host,
  int port,
);

@JS()
external PromiseJsImpl<void> deleteDoc(
  DocumentReferenceJsImpl reference,
);

@JS()
// TODO deleteField

@JS()
external PromiseJsImpl<void> disableNetwork(FirestoreJsImpl firestore);

@JS()
external DocumentReferenceJsImpl doc(
  dynamic reference, // Firestore | CollectionReference
  [
  String documentPath,
]);

@JS()
external FieldPath documentId();

@JS()
external PromiseJsImpl<void> enableIndexedDbPersistence(
  FirestoreJsImpl firestore, [
  PersistenceSettings? settings,
]);

@JS()
external PromiseJsImpl<void> enableMultiTabIndexedDbPersistence(
    FirestoreJsImpl firestore);

@JS()
external PromiseJsImpl<void> enableNetwork(FirestoreJsImpl firestore);

@JS()
// TODO endAt

@JS()
// TODO endBefore

@JS()
external PromiseJsImpl<DocumentSnapshotJsImpl> getDoc(
  DocumentReferenceJsImpl reference,
);

@JS()
external PromiseJsImpl<DocumentSnapshotJsImpl> getDocFromCache(
  DocumentReferenceJsImpl reference,
);

@JS()
external PromiseJsImpl<DocumentSnapshotJsImpl> getDocFromServer(
  DocumentReferenceJsImpl reference,
);

@JS()
// TODO getDocs

@JS()
// TODO getDocsFromCache

@JS()
// TODO getDocsFromServer

@JS()
external FieldValue increment(num n);

@JS()
// TODO limit

@JS()
// TODO limitToLast

@JS()
external LoadBundleTaskJsImpl loadBundle(
  FirestoreJsImpl firestore,
  Uint8List bundle,
);

@JS()
external PromiseJsImpl<QueryJsImpl?> namedQuery(
  FirestoreJsImpl firestore,
  String name,
);

@JS()
external void Function() onSnapshot(
  dynamic reference, // DocumentReference | Query
  dynamic optionsOrObserverOrOnNext,
  dynamic observerOrOnNextOrOnError, [
  Func1<FirebaseError, dynamic>? onError,
]);

@JS()
external void Function() onSnapshotsInSync(
    FirestoreJsImpl firestore, dynamic observer);

@JS()
// TODO orderBy

@JS()
// TODO query

@JS()
external bool queryEqual(QueryJsImpl left, QueryJsImpl right);

@JS()
// TODO refEqual

@JS()
external PromiseJsImpl<void> runTransaction(
  FirestoreJsImpl firestore,
  Func1<TransactionJsImpl, PromiseJsImpl> updateFunction,
);

@JS()
external FieldValue serverTimestamp();

@JS()
external PromiseJsImpl<void> setDoc(
  DocumentReferenceJsImpl reference,
  dynamic data, [
  SetOptions? options,
]);

@JS()
external void setLogLevel(String logLevel);

@JS()
external bool snapshotEqual(
  dynamic /* DocumentSnapshot | QuerySnapshot */ left,
  dynamic /* DocumentSnapshot | QuerySnapshot */ right,
);

@JS()
// TODO startAfter

@JS()
// TODO startAt

@JS()
external PromiseJsImpl<void> terminate(FirestoreJsImpl firestore);

@JS()
external PromiseJsImpl<void> updateDoc(
  DocumentReferenceJsImpl reference,
  dynamic data,
);

@JS()
external PromiseJsImpl<void> waitForPendingWrites(FirestoreJsImpl firestore);

@JS()
// TODO where

@JS()
external WriteBatchJsImpl writeBatch(FirestoreJsImpl firestore);

@JS('Firestore')
abstract class FirestoreJsImpl {
  external AppJsImpl get app;
  external String get type;

// TODO how?
//   external void settings(Settings settings);

}

@JS('WriteBatch')
abstract class WriteBatchJsImpl {
  external PromiseJsImpl<void> commit();

  external WriteBatchJsImpl delete(DocumentReferenceJsImpl documentRef);

  external WriteBatchJsImpl set(
      DocumentReferenceJsImpl documentRef, dynamic data,
      [SetOptions? options]);

  external WriteBatchJsImpl update(
      DocumentReferenceJsImpl documentRef, dynamic dataOrFieldsAndValues);
}

@JS('CollectionReference')
class CollectionReferenceJsImpl extends QueryJsImpl {
  external String get id;
  external DocumentReferenceJsImpl get parent;
  external String get path;
}

@anonymous
@JS()
class PersistenceSettings {
  external bool get synchronizeTabs;
  external factory PersistenceSettings({bool? synchronizeTabs});
}

@JS()
class FieldPath {
  external factory FieldPath(String fieldName0,
      [String? fieldName1,
      String? fieldName2,
      String? fieldName3,
      String? fieldName4,
      String? fieldName5,
      String? fieldName6,
      String? fieldName7,
      String? fieldName8,
      String? fieldName9]);

  external bool isEqual(Object other);
}

@JS('GeoPoint')
external GeoPointJsImpl get GeoPointConstructor;

@JS('GeoPoint')
class GeoPointJsImpl {
  external factory GeoPointJsImpl(num latitude, num longitude);

  /// The latitude of this GeoPoint instance.
  external num get latitude;

  /// The longitude of this GeoPoint instance.
  external num get longitude;

  /// Returns `true` if this [GeoPoint] is equal to the provided [other].
  external bool isEqual(Object other);
}

@JS('Blob')
external BlobJsImpl get BlobConstructor;

@JS('Blob')
@anonymous
abstract class BlobJsImpl {
  external static BlobJsImpl fromBase64String(String base64);

  external static BlobJsImpl fromUint8Array(Uint8List list);

  external String toBase64();

  external Uint8List toUint8Array();

  /// Returns `true` if this [Blob] is equal to the provided [other].
  external bool isEqual(Object other);
}

@anonymous
@JS()
abstract class DocumentChangeJsImpl {
  external String /*'added'|'removed'|'modified'*/ get type;

  external set type(String /*'added'|'removed'|'modified'*/ v);

  external DocumentSnapshotJsImpl get doc;

  external set doc(DocumentSnapshotJsImpl v);

  external num get oldIndex;

  external set oldIndex(num v);

  external num get newIndex;

  external set newIndex(num v);
}

@JS('DocumentReference')
external DocumentReferenceJsImpl get DocumentReferenceJsConstructor;

@JS('DocumentReference')
abstract class DocumentReferenceJsImpl {
  external FirestoreJsImpl get firestore;
  external String get id;
  external CollectionReferenceJsImpl get parent;
  external String get path;
//   external CollectionReferenceJsImpl collection(String collectionPath);

// //ignore: prefer_void_to_null
//   external PromiseJsImpl<Null> delete();

//   external PromiseJsImpl<DocumentSnapshotJsImpl> get([GetOptions? options]);

//   external void Function() onSnapshot(
//     dynamic optionsOrObserverOrOnNext,
//     dynamic observerOrOnNextOrOnError, [
//     Func1<FirebaseError, dynamic>? onError,
//   ]);
}

@JS('LoadBundleTask')
abstract class LoadBundleTaskJsImpl {
  external void Function() onProgress(
    void Function(LoadBundleTaskProgressJsImpl) progress,
  );

  external PromiseJsImpl then([
    Func1? onResolve,
    dynamic Function(FirestoreError) onReject,
  ]);
}

@JS()
@anonymous
abstract class LoadBundleTaskProgressJsImpl {
  external String get bytesLoaded;

  external int get documentsLoaded;

  external String get taskState;

  external String get totalBytes;

  external int get totalDocuments;
}

@JS('DocumentSnapshot')
abstract class DocumentSnapshotJsImpl {
  external String get id;
  external SnapshotMetadata get metadata;
  external DocumentReferenceJsImpl get ref;

  external dynamic data();
  external bool exists();
  external dynamic get(/*String|FieldPath*/ dynamic fieldPath);
  // external bool isEqual(DocumentSnapshotJsImpl other);
}

/// Sentinel values that can be used when writing document fields with
/// [set()] or [update()].
///
/// See: <https://firebase.google.com/docs/reference/js/firebase.firestore.FieldValue>.
@JS()
@anonymous
abstract class FieldValue {
  /// Returns a sentinel for use with [update()] to mark a field for deletion.
  external static FieldValue delete();

  /// Returns a sentinel used with [set()] or [update()] to include a
  /// server-generated timestamp in the written data.

  /// Returns `true` if this [FieldValue] is equal to the provided [other].
  external bool isEqual(Object other);
}

/// Used internally to allow calling FieldValue.arrayUnion and arrayRemove
@JS('FieldValue')
external dynamic get fieldValues;

@JS('Query')
abstract class QueryJsImpl {
  external FirestoreJsImpl get firestore;
  external String get type;

  // external QueryJsImpl endAt(
  //     /*DocumentSnapshot|List<dynamic>*/
  //     dynamic snapshotOrFieldValues);

  // external QueryJsImpl endBefore(
  //     /*DocumentSnapshot|List<dynamic>*/
  //     dynamic snapshotOrFieldValues);

  // external PromiseJsImpl<QuerySnapshotJsImpl> get([GetOptions? options]);

  // external QueryJsImpl limit(num? limit);

  // external QueryJsImpl limitToLast(num? limit);

  // external void Function() onSnapshot(
  //     SnapshotListenOptions options,
  //     void Function(QuerySnapshotJsImpl) onNext,
  //     Func1<FirebaseError, dynamic> onError);

  // external QueryJsImpl orderBy(/*String|FieldPath*/ dynamic fieldPath,
  //     [String? /*'desc'|'asc'*/ directionStr]);

  // external QueryJsImpl startAfter(
  //     /*DocumentSnapshot|List<dynamic>*/
  //     dynamic snapshotOrFieldValues);

  // external QueryJsImpl startAt(
  //     /*DocumentSnapshot|List<dynamic>*/
  //     dynamic snapshotOrFieldValues);

  // external QueryJsImpl where(/*String|FieldPath*/ dynamic fieldPath,
  //     String /*'<'|'<='|'=='|'>='|'>'*/ opStr, dynamic value);
}

@JS('QuerySnapshot')
abstract class QuerySnapshotJsImpl {
  external List<DocumentSnapshotJsImpl> get docs;
  external bool get empty;
  external SnapshotMetadata get metadata;
  external num get size;

  external List<DocumentChangeJsImpl> docChanges(
      [SnapshotListenOptions? options]);

  external void forEach(
    void Function(DocumentSnapshotJsImpl) callback, [
    dynamic thisArg,
  ]);

  // external set docs(List<DocumentSnapshotJsImpl> v);

  // external set empty(bool v);

  // external set metadata(SnapshotMetadata v);

  // external QueryJsImpl get query;

  // external set query(QueryJsImpl v);

  // external set size(num v);

  // external bool isEqual(QuerySnapshotJsImpl other);
}

@JS('Transaction')
abstract class TransactionJsImpl {
  external TransactionJsImpl delete(DocumentReferenceJsImpl documentRef);

  external PromiseJsImpl<DocumentSnapshotJsImpl> get(
      DocumentReferenceJsImpl documentRef);

  external TransactionJsImpl set(
      DocumentReferenceJsImpl documentRef, dynamic data,
      [SetOptions? options]);

  external TransactionJsImpl update(
      DocumentReferenceJsImpl documentRef, dynamic dataOrFieldsAndValues);
}

@JS('Timestamp')
external TimestampJsImpl get TimestampJsConstructor;

@JS('Timestamp')
abstract class TimestampJsImpl {
  external int get seconds;

  external int get nanoseconds;

  external factory TimestampJsImpl(int seconds, int nanoseconds);

  //external JsDate toDate();
  external int toMillis();

  external static TimestampJsImpl now();

  //external static TimestampJsImpl fromDate(JsDate date);
  external static TimestampJsImpl fromMillis(int milliseconds);

  external bool isEqual(TimestampJsImpl other);

  @override
  external String toString();
}

/// The set of Cloud Firestore status codes.
/// These status codes are also exposed by gRPC.
///
/// See: <https://firebase.google.com/docs/reference/js/firebase.firestore.FirestoreError>.
@anonymous
@JS()
abstract class FirestoreError {
  external String /*|'cancelled'|'unknown'|'invalid-argument'|'deadline-exceeded'|'not-found'|'already-exists'|'permission-denied'|'resource-exhausted'|'failed-precondition'|'aborted'|'out-of-range'|'unimplemented'|'internal'|'unavailable'|'data-loss'|'unauthenticated'*/ get code;

  external set code(
      /*|'cancelled'|'unknown'|'invalid-argument'|'deadline-exceeded'|'not-found'|'already-exists'|'permission-denied'|'resource-exhausted'|'failed-precondition'|'aborted'|'out-of-range'|'unimplemented'|'internal'|'unavailable'|'data-loss'|'unauthenticated'*/
      String v);

  external String get message;

  external set message(String v);

  external String get name;

  external set name(String v);

  external String get stack;

  external set stack(String v);

  external factory FirestoreError(
      {/*|'cancelled'|'unknown'|'invalid-argument'|'deadline-exceeded'|'not-found'|'already-exists'|'permission-denied'|'resource-exhausted'|'failed-precondition'|'aborted'|'out-of-range'|'unimplemented'|'internal'|'unavailable'|'data-loss'|'unauthenticated'*/ code,
      String? message,
      String? name,
      String? stack});
}

/// Options for use with `Query.onSnapshot() to control the behavior of the
/// snapshot listener.
@anonymous
@JS()
abstract class SnapshotListenOptions {
  /// Raise an event even if only metadata of the query or document changes.
  ///
  /// Default is `false`.
  external bool get includeMetadataChanges;

  external set includeMetadataChanges(bool value);

  external factory SnapshotListenOptions({bool? includeMetadataChanges});
}

/// Specifies custom configurations for your Cloud Firestore instance.
/// You must set these before invoking any other methods.
///
/// See: <https://firebase.google.com/docs/reference/js/firebase.firestore.Settings>.
@anonymous
@JS()
abstract class Settings {
  //ignore: avoid_setters_without_getters
  external set cacheSizeBytes(int i);

  //ignore: avoid_setters_without_getters
  external set host(String h);

  //ignore: avoid_setters_without_getters
  external set ssl(bool v);

  external factory Settings({
    int? cacheSizeBytes,
    String? host,
    bool? ssl,
  });
}

/// Metadata about a snapshot, describing the state of the snapshot.
///
/// See: <https://firebase.google.com/docs/reference/js/firebase.firestore.SnapshotMetadata>.
@JS()
abstract class SnapshotMetadata {
  /// [:true:] if the snapshot includes local writes (set() or update() calls)
  /// that haven't been committed to the backend yet. If your listener has opted
  /// into metadata updates via onDocumentMetadataSnapshot,
  /// onQueryMetadataSnapshot or onMetadataSnapshot, you receive another
  /// snapshot with [hasPendingWrites] set to [:false:] once the writes have
  /// been committed to the backend.
  external bool get hasPendingWrites;

  external set hasPendingWrites(bool v);

  /// [:true:] if the snapshot was created from cached data rather than
  /// guaranteed up-to-date server data. If your listener has opted into
  /// metadata updates (onDocumentMetadataSnapshot, onQueryMetadataSnapshot or
  /// onMetadataSnapshot) you will receive another snapshot with [fromCache] set
  /// to [:false:] once the client has received up-to-date data from the
  /// backend.
  external bool get fromCache;

  external set fromCache(bool v);

  /// Returns [true] if this [SnapshotMetadata] is equal to the provided one.
  external bool isEqual(SnapshotMetadata other);
}

/// Options for use with [DocumentReference.onMetadataChangesSnapshot()] to
/// control the behavior of the snapshot listener.
@anonymous
@JS()
abstract class DocumentListenOptions {
  /// Raise an event even if only metadata of the document changed. Default is
  /// [:false:].
  external bool get includeMetadataChanges;

  external set includeMetadataChanges(bool v);

  external factory DocumentListenOptions({bool? includeMetadataChanges});
}

/// An object to configure the [DocumentReference.get] and [Query.get] behavior.
@anonymous
@JS()
abstract class GetOptions {
  /// Describes whether we should get from server or cache.
  external String get source;

  external factory GetOptions({String? source});
}

/// An object to configure the [WriteBatch.set] behavior.
/// Pass [: {merge: true} :] to only replace the values specified in the data
/// argument. Fields omitted will remain untouched.
@anonymous
@JS()
abstract class SetOptions {
  /// Set to true to replace only the values from the new data.
  /// Fields omitted will remain untouched.
  external bool get merge;

  external set merge(bool v);

//ignore: avoid_setters_without_getters
  external set mergeFields(List<String> v);

  external factory SetOptions({bool? merge, List<String>? mergeFields});
}

/// Options that configure how data is retrieved from a DocumentSnapshot
/// (e.g. the desired behavior for server timestamps that have not yet been set
/// to their final value).
///
/// See: https://firebase.google.com/docs/reference/js/firebase.firestore.SnapshotOptions.
@anonymous
@JS()
abstract class SnapshotOptions {
  /// If set, controls the return value for server timestamps that have not yet
  /// been set to their final value. Possible values are "estimate", "previous"
  /// and "none".
  /// If omitted or set to 'none', null will be returned by default until the
  /// server value becomes available.
  external String get serverTimestamps;

  external factory SnapshotOptions({String? serverTimestamps});
}

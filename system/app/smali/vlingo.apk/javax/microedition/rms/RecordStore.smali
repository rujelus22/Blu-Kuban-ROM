.class public Ljavax/microedition/rms/RecordStore;
.super Ljava/lang/Object;
.source "RecordStore.java"


# static fields
.field public static final AUTHMODE_ANY:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteRecordStore(Ljava/lang/String;)V
    .registers 1
    .parameter "rsName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 46
    return-void
.end method

.method public static openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;
    .registers 3
    .parameter "rsName"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public static openRecordStore(Ljava/lang/String;ZIZ)Ljavax/microedition/rms/RecordStore;
    .registers 5
    .parameter "recordStoreName"
    .parameter "b"
    .parameter "authmodeAny"
    .parameter "c"

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addRecord([BII)I
    .registers 5
    .parameter "data"
    .parameter "i"
    .parameter "length"

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public closeRecordStore()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 31
    return-void
.end method

.method public deleteRecord(I)V
    .registers 2
    .parameter "recordId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 41
    return-void
.end method

.method public enumerateRecords(Ljava/lang/Object;Ljava/lang/Object;Z)Ljavax/microedition/rms/RecordEnumeration;
    .registers 5
    .parameter "object"
    .parameter "object2"
    .parameter "b"

    .prologue
    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecord(I)[B
    .registers 3
    .parameter "rId"

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

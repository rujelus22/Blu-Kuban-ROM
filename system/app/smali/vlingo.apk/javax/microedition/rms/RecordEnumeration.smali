.class public Ljavax/microedition/rms/RecordEnumeration;
.super Ljava/lang/Object;
.source "RecordEnumeration.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    .prologue
    .line 28
    return-void
.end method

.method public hasNextElement()Z
    .registers 2

    .prologue
    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public nextRecord()[B
    .registers 2

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public nextRecordId()I
    .registers 2

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

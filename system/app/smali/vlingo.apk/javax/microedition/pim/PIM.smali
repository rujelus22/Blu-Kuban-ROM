.class public Ljavax/microedition/pim/PIM;
.super Ljava/lang/Object;
.source "PIM.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ljavax/microedition/pim/PIM;
    .registers 1

    .prologue
    .line 12
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public openPIMList(II)Ljavax/microedition/pim/PIMList;
    .registers 4
    .parameter "pimListType"
    .parameter "mode"

    .prologue
    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.class Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;
.super Ljava/lang/Object;
.source "BinaryInputCapsule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/export/binary/BinaryInputCapsule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntIDMap"
.end annotation


# instance fields
.field public keys:[I

.field public values:[Lcom/jme3/export/binary/BinaryInputCapsule$ID;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jme3/export/binary/BinaryInputCapsule$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1367
    invoke-direct {p0}, Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;-><init>()V

    return-void
.end method

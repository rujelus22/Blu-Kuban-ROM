.class public Lcom/sec/android/mimage/photoretouching/WorkSpace$ACTION;
.super Ljava/lang/Object;
.source "WorkSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/WorkSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ACTION"
.end annotation


# static fields
.field public static final BRIGHTNESS:I = 0x2

.field public static final CONTRAST:I = 0x1

.field public static final COPYIN:I = 0xb

.field public static final COPYTO:I = 0xa

.field public static final CROP:I = 0xf

.field public static final ERASER:I = 0xd

.field public static final GHOST:I = 0x8

.field public static final GRAYSCALE:I = 0x3

.field public static final LENSBLUR:I = 0x5

.field public static final LINEARPAN:I = 0x6

.field public static final NORMALBLUR:I = 0x4

.field public static final RADIALPAN:I = 0x7

.field public static final ROTATE:I = 0xe

.field public static final SATURATION:I = 0x0

.field public static final SPEEDLINE:I = 0x9

.field public static final WARPING:I = 0xc


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/WorkSpace;)V
    .registers 2
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$ACTION;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

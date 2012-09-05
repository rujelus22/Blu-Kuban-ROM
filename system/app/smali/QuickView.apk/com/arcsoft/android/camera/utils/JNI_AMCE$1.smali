.class final Lcom/arcsoft/android/camera/utils/JNI_AMCE$1;
.super Ljava/lang/Object;
.source "JNI_AMCE.java"

# interfaces
.implements Lcom/arcsoft/android/camera/utils/JNI_AMCE$CamEng_NotifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/android/camera/utils/JNI_AMCE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/Object;I)I
    .registers 5
    .parameter "message"
    .parameter "data"
    .parameter "nUserData"

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

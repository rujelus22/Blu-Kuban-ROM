.class Lcom/android/internal/telephony/RIL$2$1;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/RIL$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/RIL$2;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL$2;)V
    .registers 2
    .parameter

    .prologue
    .line 700
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$2$1;->this$1:Lcom/android/internal/telephony/RIL$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 711
    return-void
.end method

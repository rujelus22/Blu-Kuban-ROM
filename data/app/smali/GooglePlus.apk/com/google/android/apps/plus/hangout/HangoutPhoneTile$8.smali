.class Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$8;
.super Ljava/lang/Object;
.source "HangoutPhoneTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->onTileStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V
    .registers 2
    .parameter

    .prologue
    .line 611
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$8;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$8;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->fadeOutInstructionsView()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->access$1500(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V

    .line 615
    return-void
.end method

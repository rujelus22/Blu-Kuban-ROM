.class Lcom/google/android/apps/plus/hangout/HangoutTile$5;
.super Ljava/lang/Object;
.source "HangoutTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutTile;->onTileStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutTile;)V
    .registers 2
    .parameter

    .prologue
    .line 528
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$5;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$5;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTile;->fadeOutInstructionsView()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$1900(Lcom/google/android/apps/plus/hangout/HangoutTile;)V

    .line 532
    return-void
.end method

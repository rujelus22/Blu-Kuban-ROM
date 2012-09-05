.class Lcom/sprint/dsa/PageActivity$1;
.super Ljava/lang/Object;
.source "PageActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/PageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/PageActivity;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/PageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/PageActivity$1;->this$0:Lcom/sprint/dsa/PageActivity;

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/sprint/dsa/PageActivity$1;->this$0:Lcom/sprint/dsa/PageActivity;

    invoke-virtual {v0}, Lcom/sprint/dsa/PageActivity;->resetSound()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 433
    :goto_5
    return-void

    .line 430
    :catch_6
    move-exception v0

    goto :goto_5
.end method

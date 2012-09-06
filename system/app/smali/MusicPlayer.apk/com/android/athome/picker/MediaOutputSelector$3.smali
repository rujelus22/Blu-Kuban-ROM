.class Lcom/android/athome/picker/MediaOutputSelector$3;
.super Ljava/lang/Object;
.source "MediaOutputSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/athome/picker/MediaOutputSelector;->configureUi(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/athome/picker/MediaOutputSelector;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/MediaOutputSelector;)V
    .registers 2
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/athome/picker/MediaOutputSelector$3;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector$3;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #calls: Lcom/android/athome/picker/MediaOutputSelector;->onStartVolumeDetailsChange()V
    invoke-static {v0}, Lcom/android/athome/picker/MediaOutputSelector;->access$200(Lcom/android/athome/picker/MediaOutputSelector;)V

    .line 241
    return-void
.end method

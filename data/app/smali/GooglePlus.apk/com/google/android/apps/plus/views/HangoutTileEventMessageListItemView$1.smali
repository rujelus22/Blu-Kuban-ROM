.class Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView$1;
.super Ljava/lang/Object;
.source "HangoutTileEventMessageListItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;)V
    .registers 2
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView$1;->this$0:Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView$1;->this$0:Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/phone/ConversationActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->toggleTiles()V

    .line 34
    return-void
.end method

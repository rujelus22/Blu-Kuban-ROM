.class final Lcom/sec/android/socialhub/SocialHubBaseContextMenu$2;
.super Ljava/lang/Object;
.source "SocialHubBaseContextMenu.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/SocialHubBaseContextMenu;->onCreateContextMenu(Landroid/content/Context;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Lcom/sec/android/socialhub/SocialHubBaseContextMenu$IContextMenuInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$app_context:Landroid/content/Context;

.field final synthetic val$print_view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sec/android/socialhub/SocialHubBaseContextMenu$2;->val$app_context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/socialhub/SocialHubBaseContextMenu$2;->val$print_view:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/socialhub/SocialHubBaseContextMenu$2;->val$app_context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/socialhub/SocialHubBaseContextMenu$2;->val$print_view:Landroid/view/View;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/print/MobilePrintUtil;->print(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap$CompressFormat;)Z

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.class Lcom/google/android/apps/reader/widget/ItemContextMenu$ViewImageListener;
.super Ljava/lang/Object;
.source "ItemContextMenu.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/widget/ItemContextMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewImageListener"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "url"

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    if-nez p1, :cond_b

    .line 212
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 214
    :cond_b
    if-nez p2, :cond_13

    .line 215
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 217
    :cond_13
    iput-object p1, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$ViewImageListener;->mContext:Landroid/content/Context;

    .line 218
    iput-object p2, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$ViewImageListener;->mUrl:Ljava/lang/String;

    .line 219
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$ViewImageListener;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$ViewImageListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 227
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 228
    const-string v0, "com.android.browser.application_id"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$ViewImageListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 230
    const/4 v0, 0x1

    return v0
.end method

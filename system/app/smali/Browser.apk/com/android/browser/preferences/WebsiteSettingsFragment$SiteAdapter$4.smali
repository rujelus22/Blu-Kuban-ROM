.class Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$4;
.super Ljava/lang/Object;
.source "WebsiteSettingsFragment.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

.field final synthetic val$locationIcon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;Landroid/widget/ImageView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$4;->this$1:Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    iput-object p2, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$4;->val$locationIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Boolean;)V
    .registers 4
    .parameter "allowed"

    .prologue
    .line 523
    if-eqz p1, :cond_13

    .line 524
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 525
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$4;->val$locationIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$4;->this$1:Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    #getter for: Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mLocationAllowedIcon:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->access$400(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 530
    :cond_13
    :goto_13
    return-void

    .line 527
    :cond_14
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$4;->val$locationIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$4;->this$1:Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    #getter for: Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mLocationDisallowedIcon:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->access$500(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_13
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 521
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$4;->onReceiveValue(Ljava/lang/Boolean;)V

    return-void
.end method

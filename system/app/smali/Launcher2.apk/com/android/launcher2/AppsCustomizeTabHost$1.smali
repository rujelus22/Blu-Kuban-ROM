.class Lcom/android/launcher2/AppsCustomizeTabHost$1;
.super Ljava/lang/Object;
.source "AppsCustomizeTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppsCustomizeTabHost;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

.field final synthetic val$appsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppsCustomizeTabHost;Lcom/android/launcher2/AppsCustomizePagedView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizeTabHost$1;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    iput-object p2, p0, Lcom/android/launcher2/AppsCustomizeTabHost$1;->val$appsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .registers 3
    .parameter "tag"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost$1;->val$appsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    return-object v0
.end method
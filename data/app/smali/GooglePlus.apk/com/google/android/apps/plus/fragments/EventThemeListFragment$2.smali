.class Lcom/google/android/apps/plus/fragments/EventThemeListFragment$2;
.super Lcom/google/android/apps/plus/phone/EsCursorLoader;
.source "EventThemeListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/EventThemeListFragment;

.field final synthetic val$account:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/EventThemeListFragment;Landroid/content/Context;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/EventThemeListFragment;

    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment$2;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 5

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment$2;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/EventThemeListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->mFilter:I
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->access$000(Lcom/google/android/apps/plus/fragments/EventThemeListFragment;)I

    move-result v2

    invoke-static {}, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->access$100()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsEventData;->getEventThemes(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.class Lcom/google/android/finsky/activities/DebugActivity$4;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/DebugActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper",
        "<",
        "Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DebugActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DebugActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/google/android/finsky/activities/DebugActivity$4;->this$0:Lcom/google/android/finsky/activities/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromStringList([Ljava/lang/String;)Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;
    .registers 7
    .parameter "list"

    .prologue
    const/4 v1, 0x0

    .line 384
    if-eqz p1, :cond_15

    .line 385
    new-instance v0, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget-object v2, p1, v2

    const/4 v3, 0x3

    aget-object v3, p1, v3

    const/4 v4, 0x4

    aget-object v4, p1, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :goto_14
    return-object v0

    :cond_15
    new-instance v0, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method

.method public bridge synthetic fromStringList([Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/DebugActivity$4;->fromStringList([Ljava/lang/String;)Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;

    move-result-object v0

    return-object v0
.end method

.method public isSelected(Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;)Z
    .registers 7
    .parameter "environment"

    .prologue
    .line 394
    iget-object v3, p1, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;->dfeBaseUrl:Ljava/lang/String;

    .line 395
    .local v3, url:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/finsky/activities/DebugActivity$4;->this$0:Lcom/google/android/finsky/activities/DebugActivity;

    invoke-virtual {v4}, Lcom/google/android/finsky/activities/DebugActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/common/http/UrlRules;->getRules(Landroid/content/ContentResolver;)Lcom/google/android/common/http/UrlRules;

    move-result-object v2

    .line 396
    .local v2, rules:Lcom/google/android/common/http/UrlRules;
    invoke-static {}, Lcom/google/android/finsky/activities/DebugActivity;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/common/http/UrlRules;->matchRule(Ljava/lang/String;)Lcom/google/android/common/http/UrlRules$Rule;

    move-result-object v1

    .line 397
    .local v1, rule:Lcom/google/android/common/http/UrlRules$Rule;
    sget-object v4, Lcom/google/android/common/http/UrlRules$Rule;->DEFAULT:Lcom/google/android/common/http/UrlRules$Rule;

    if-ne v1, v4, :cond_21

    invoke-static {}, Lcom/google/android/finsky/activities/DebugActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, rewritten:Ljava/lang/String;
    :goto_1c
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    return v4

    .line 397
    .end local v0           #rewritten:Ljava/lang/String;
    :cond_21
    invoke-static {}, Lcom/google/android/finsky/activities/DebugActivity;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/common/http/UrlRules$Rule;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c
.end method

.method public bridge synthetic isSelected(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 381
    check-cast p1, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/DebugActivity$4;->isSelected(Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;)Z

    move-result v0

    return v0
.end method

.method public selectItem(Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;)V
    .registers 3
    .parameter "newEnvironment"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/android/finsky/activities/DebugActivity$4;->this$0:Lcom/google/android/finsky/activities/DebugActivity;

    #calls: Lcom/google/android/finsky/activities/DebugActivity;->selectEnvironment(Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;)V
    invoke-static {v0, p1}, Lcom/google/android/finsky/activities/DebugActivity;->access$300(Lcom/google/android/finsky/activities/DebugActivity;Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;)V

    .line 406
    return-void
.end method

.method public bridge synthetic selectItem(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 381
    check-cast p1, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/DebugActivity$4;->selectItem(Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;)V

    return-void
.end method

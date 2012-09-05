.class public Lcom/google/android/apps/plus/views/SearchViewAdapter;
.super Ljava/lang/Object;
.source "SearchViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/views/SearchViewAdapter;
    .registers 5
    .parameter

    .prologue
    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2d

    .line 47
    :try_start_6
    const-string v0, "com.google.android.apps.plus.views.SearchViewAdapterV11"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/SearchViewAdapter;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_24} :catch_25

    .line 55
    :goto_24
    return-object v0

    .line 50
    :catch_25
    move-exception v0

    .line 51
    const-string v1, "SearchViewAdapter"

    const-string v2, "Cannot instantiate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    :cond_2d
    new-instance v0, Lcom/google/android/apps/plus/views/SearchViewAdapter;

    invoke-direct {v0}, Lcom/google/android/apps/plus/views/SearchViewAdapter;-><init>()V

    goto :goto_24
.end method


# virtual methods
.method public addOnChangeListener(Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 69
    return-void
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public setQueryText(Ljava/lang/String;)V
    .registers 2
    .parameter "queryText"

    .prologue
    .line 62
    return-void
.end method

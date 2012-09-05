.class public Lcom/google/android/apps/plus/views/ActivityPreviewViewFactory;
.super Ljava/lang/Object;
.source "ActivityPreviewViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/ActivityPreviewViewFactory$1;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createViewFromActivity(Landroid/content/Context;Lcom/google/android/apps/plus/network/ApiaryActivity;)Lcom/google/android/apps/plus/views/ActivityPreviewView;
    .registers 5
    .parameter "context"
    .parameter "activity"

    .prologue
    .line 26
    if-nez p1, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 62
    :cond_3
    :goto_3
    return-object v0

    .line 30
    :cond_4
    const/4 v0, 0x0

    .line 32
    .local v0, view:Lcom/google/android/apps/plus/views/ActivityPreviewView;
    sget-object v1, Lcom/google/android/apps/plus/views/ActivityPreviewViewFactory$1;->$SwitchMap$com$google$android$apps$plus$network$ApiaryActivity$Type:[I

    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/ApiaryActivity;->getType()Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_38

    .line 58
    :goto_14
    if-eqz v0, :cond_3

    .line 59
    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/ActivityPreviewView;->setActivity(Lcom/google/android/apps/plus/network/ApiaryActivity;)V

    goto :goto_3

    .line 34
    :pswitch_1a
    new-instance v0, Lcom/google/android/apps/plus/views/VideoActivityPreviewView;

    .end local v0           #view:Lcom/google/android/apps/plus/views/ActivityPreviewView;
    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/VideoActivityPreviewView;-><init>(Landroid/content/Context;)V

    .line 35
    .restart local v0       #view:Lcom/google/android/apps/plus/views/ActivityPreviewView;
    goto :goto_14

    .line 38
    :pswitch_20
    new-instance v0, Lcom/google/android/apps/plus/views/AudioActivityPreviewView;

    .end local v0           #view:Lcom/google/android/apps/plus/views/ActivityPreviewView;
    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/AudioActivityPreviewView;-><init>(Landroid/content/Context;)V

    .line 39
    .restart local v0       #view:Lcom/google/android/apps/plus/views/ActivityPreviewView;
    goto :goto_14

    .line 42
    :pswitch_26
    new-instance v0, Lcom/google/android/apps/plus/views/ArticleActivityPreviewView;

    .end local v0           #view:Lcom/google/android/apps/plus/views/ActivityPreviewView;
    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/ArticleActivityPreviewView;-><init>(Landroid/content/Context;)V

    .line 43
    .restart local v0       #view:Lcom/google/android/apps/plus/views/ActivityPreviewView;
    goto :goto_14

    .line 46
    :pswitch_2c
    new-instance v0, Lcom/google/android/apps/plus/views/PhotoActivityPreviewView;

    .end local v0           #view:Lcom/google/android/apps/plus/views/ActivityPreviewView;
    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/PhotoActivityPreviewView;-><init>(Landroid/content/Context;)V

    .line 47
    .restart local v0       #view:Lcom/google/android/apps/plus/views/ActivityPreviewView;
    goto :goto_14

    .line 50
    :pswitch_32
    new-instance v0, Lcom/google/android/apps/plus/views/PhotoAlbumActivityPreviewView;

    .end local v0           #view:Lcom/google/android/apps/plus/views/ActivityPreviewView;
    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/PhotoAlbumActivityPreviewView;-><init>(Landroid/content/Context;)V

    .line 51
    .restart local v0       #view:Lcom/google/android/apps/plus/views/ActivityPreviewView;
    goto :goto_14

    .line 32
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_20
        :pswitch_26
        :pswitch_2c
        :pswitch_32
    .end packed-switch
.end method

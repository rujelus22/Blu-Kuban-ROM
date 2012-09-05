.class public Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;
.super Ljava/lang/Object;
.source "MainActivityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/MainActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabSpec"
.end annotation


# instance fields
.field private mContentStrategy:Lcom/sec/android/app/myfiles/MainActivityView$ContentStrategy;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/myfiles/MainActivityView;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/myfiles/MainActivityView;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "tag"

    .prologue
    .line 321
    iput-object p1, p0, Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;->this$0:Lcom/sec/android/app/myfiles/MainActivityView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p2, p0, Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;->mTag:Ljava/lang/String;

    .line 323
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/myfiles/MainActivityView;Ljava/lang/String;Lcom/sec/android/app/myfiles/MainActivityView$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 315
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;-><init>(Lcom/sec/android/app/myfiles/MainActivityView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;)Lcom/sec/android/app/myfiles/MainActivityView$ContentStrategy;
    .registers 2
    .parameter "x0"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;->mContentStrategy:Lcom/sec/android/app/myfiles/MainActivityView$ContentStrategy;

    return-object v0
.end method


# virtual methods
.method public setContent(Landroid/content/Intent;)Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;
    .registers 6
    .parameter "intent"

    .prologue
    .line 329
    new-instance v0, Lcom/sec/android/app/myfiles/MainActivityView$IntentContentStrategy;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;->this$0:Lcom/sec/android/app/myfiles/MainActivityView;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;->mTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/sec/android/app/myfiles/MainActivityView$IntentContentStrategy;-><init>(Lcom/sec/android/app/myfiles/MainActivityView;Ljava/lang/String;Landroid/content/Intent;Lcom/sec/android/app/myfiles/MainActivityView$1;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;->mContentStrategy:Lcom/sec/android/app/myfiles/MainActivityView$ContentStrategy;

    .line 330
    return-object p0
.end method

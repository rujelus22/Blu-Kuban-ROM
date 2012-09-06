.class abstract Lcom/google/android/apps/plus/hangout/ToastsView$ToastInfo;
.super Ljava/lang/Object;
.source "ToastsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/ToastsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ToastInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/ToastsView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/hangout/ToastsView;)V
    .registers 2
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/ToastsView$ToastInfo;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/ToastsView;Lcom/google/android/apps/plus/hangout/ToastsView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/ToastsView$ToastInfo;-><init>(Lcom/google/android/apps/plus/hangout/ToastsView;)V

    return-void
.end method


# virtual methods
.method abstract populateView(Landroid/widget/ImageView;Landroid/widget/TextView;)V
.end method

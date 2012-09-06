.class Lcom/google/android/apps/plus/hangout/ToastsView$StringToastInfo;
.super Lcom/google/android/apps/plus/hangout/ToastsView$ToastInfo;
.source "ToastsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/ToastsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StringToastInfo"
.end annotation


# instance fields
.field private final string:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/ToastsView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/ToastsView;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "string"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/ToastsView$StringToastInfo;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/hangout/ToastsView$ToastInfo;-><init>(Lcom/google/android/apps/plus/hangout/ToastsView;Lcom/google/android/apps/plus/hangout/ToastsView$1;)V

    .line 79
    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/ToastsView$StringToastInfo;->string:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method populateView(Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .registers 4
    .parameter "imageView"
    .parameter "textView"

    .prologue
    .line 84
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/ToastsView$StringToastInfo;->string:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method

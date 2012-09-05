.class public Lcom/sec/android/socialhub/view/NoAccountView$AddAccountViewWrapper;
.super Ljava/lang/Object;
.source "NoAccountView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/view/NoAccountView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AddAccountViewWrapper"
.end annotation


# instance fields
.field public mButton:Landroid/widget/Button;

.field public mDescription:Landroid/widget/TextView;

.field public mLayout:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/sec/android/socialhub/view/NoAccountView;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/view/NoAccountView;Landroid/widget/LinearLayout;I)V
    .registers 5
    .parameter
    .parameter "view"
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 128
    iput-object p1, p0, Lcom/sec/android/socialhub/view/NoAccountView$AddAccountViewWrapper;->this$0:Lcom/sec/android/socialhub/view/NoAccountView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object v0, p0, Lcom/sec/android/socialhub/view/NoAccountView$AddAccountViewWrapper;->mDescription:Landroid/widget/TextView;

    .line 124
    iput-object v0, p0, Lcom/sec/android/socialhub/view/NoAccountView$AddAccountViewWrapper;->mButton:Landroid/widget/Button;

    .line 125
    iput-object v0, p0, Lcom/sec/android/socialhub/view/NoAccountView$AddAccountViewWrapper;->mLayout:Landroid/widget/LinearLayout;

    .line 129
    iput-object p2, p0, Lcom/sec/android/socialhub/view/NoAccountView$AddAccountViewWrapper;->mLayout:Landroid/widget/LinearLayout;

    .line 130
    const v0, 0x7f0b011f

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/view/NoAccountView$AddAccountViewWrapper;->mDescription:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f0b0120

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/socialhub/view/NoAccountView$AddAccountViewWrapper;->mButton:Landroid/widget/Button;

    .line 133
    iget-object v0, p0, Lcom/sec/android/socialhub/view/NoAccountView$AddAccountViewWrapper;->mDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_2d

    .line 135
    iget-object v0, p0, Lcom/sec/android/socialhub/view/NoAccountView$AddAccountViewWrapper;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 137
    :cond_2d
    return-void
.end method


# virtual methods
.method public setListner(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listner"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/socialhub/view/NoAccountView$AddAccountViewWrapper;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-void
.end method

.class final Lcom/google/android/youtube/app/ui/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/bc;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/bc;)V
    .registers 2
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/bf;->a:Lcom/google/android/youtube/app/ui/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    packed-switch p2, :pswitch_data_c

    .line 130
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 125
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bf;->a:Lcom/google/android/youtube/app/ui/bc;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bc;->c(Lcom/google/android/youtube/app/ui/bc;)V

    .line 126
    const/4 v0, 0x1

    goto :goto_4

    .line 123
    :pswitch_data_c
    .packed-switch 0x6
        :pswitch_5
    .end packed-switch
.end method

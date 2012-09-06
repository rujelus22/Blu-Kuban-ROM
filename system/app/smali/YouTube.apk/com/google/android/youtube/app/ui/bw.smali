.class final Lcom/google/android/youtube/app/ui/bw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/bt;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/bt;)V
    .registers 2
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/bw;->a:Lcom/google/android/youtube/app/ui/bt;

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
    .line 152
    packed-switch p2, :pswitch_data_c

    .line 159
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 154
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bw;->a:Lcom/google/android/youtube/app/ui/bt;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bt;->d(Lcom/google/android/youtube/app/ui/bt;)V

    .line 155
    const/4 v0, 0x1

    goto :goto_4

    .line 152
    :pswitch_data_c
    .packed-switch 0x6
        :pswitch_5
    .end packed-switch
.end method

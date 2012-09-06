.class final Lcom/dropbox/android/activity/br;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/TextEditActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/TextEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/dropbox/android/activity/br;->a:Lcom/dropbox/android/activity/TextEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 486
    invoke-interface {p4, p5, p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

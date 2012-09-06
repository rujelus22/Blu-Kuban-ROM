.class Lcom/estrongs/android/pop/app/bf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/CompressActivity;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/CompressActivity;I)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bf;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    iput p2, p0, Lcom/estrongs/android/pop/app/bf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    if-eqz p2, :cond_25

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bf;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/CompressActivity;->c(Lcom/estrongs/android/pop/app/CompressActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    :goto_d
    iget-object v0, p0, Lcom/estrongs/android/pop/app/bf;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/CompressActivity;->c(Lcom/estrongs/android/pop/app/CompressActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bf;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/CompressActivity;->c(Lcom/estrongs/android/pop/app/CompressActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_25
    iget-object v0, p0, Lcom/estrongs/android/pop/app/bf;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/CompressActivity;->c(Lcom/estrongs/android/pop/app/CompressActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/pop/app/bf;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_d
.end method

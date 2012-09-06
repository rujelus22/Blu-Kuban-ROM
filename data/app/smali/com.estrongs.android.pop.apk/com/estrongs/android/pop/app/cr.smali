.class Lcom/estrongs/android/pop/app/cr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/cp;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cp;I)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cr;->a:Lcom/estrongs/android/pop/app/cp;

    iput p2, p0, Lcom/estrongs/android/pop/app/cr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    if-eqz p2, :cond_25

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cr;->a:Lcom/estrongs/android/pop/app/cp;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cp;->a(Lcom/estrongs/android/pop/app/cp;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    :goto_d
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cr;->a:Lcom/estrongs/android/pop/app/cp;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cp;->a(Lcom/estrongs/android/pop/app/cp;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cr;->a:Lcom/estrongs/android/pop/app/cp;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/cp;->a(Lcom/estrongs/android/pop/app/cp;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_25
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cr;->a:Lcom/estrongs/android/pop/app/cp;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cp;->a(Lcom/estrongs/android/pop/app/cp;)Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/pop/app/cr;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_d
.end method

.class final Lcom/twitter/android/bx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/twitter/android/MessagesThreadActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/MessagesThreadActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/android/MessagesThreadActivity;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0}, Lcom/twitter/android/MessagesThreadActivity;->g()V

    return-void
.end method

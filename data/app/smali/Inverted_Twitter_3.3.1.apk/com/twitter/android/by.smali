.class final Lcom/twitter/android/by;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/MessagesThreadActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/MessagesThreadActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/by;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/by;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0}, Lcom/twitter/android/MessagesThreadActivity;->h()V

    return-void
.end method

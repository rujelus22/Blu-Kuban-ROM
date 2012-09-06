.class final Lcom/twitter/android/b;
.super Lcom/twitter/android/client/g;


# instance fields
.field final synthetic a:Lcom/twitter/android/AccountSettingsActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/AccountSettingsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/b;->a:Lcom/twitter/android/AccountSettingsActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 8

    iget-object v0, p0, Lcom/twitter/android/b;->a:Lcom/twitter/android/AccountSettingsActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/twitter/android/AccountSettingsActivity;->removeDialog(I)V

    iget-object v0, p0, Lcom/twitter/android/b;->a:Lcom/twitter/android/AccountSettingsActivity;

    invoke-virtual {v0}, Lcom/twitter/android/AccountSettingsActivity;->finish()V

    return-void
.end method

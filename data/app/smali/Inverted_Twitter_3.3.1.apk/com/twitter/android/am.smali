.class final Lcom/twitter/android/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/EditProfileActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/EditProfileActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/am;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/am;->a:Lcom/twitter/android/EditProfileActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/twitter/android/EditProfileActivity;->d:Landroid/net/Uri;

    return-void
.end method

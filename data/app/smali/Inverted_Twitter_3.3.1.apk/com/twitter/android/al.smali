.class final Lcom/twitter/android/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/EditProfileActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/EditProfileActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/al;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/al;->a:Lcom/twitter/android/EditProfileActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/twitter/android/EditProfileActivity;->d:Landroid/net/Uri;

    return-void
.end method

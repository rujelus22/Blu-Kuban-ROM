.class final Lcom/twitter/android/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/EditProfileActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/EditProfileActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/an;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/an;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-virtual {v0}, Lcom/twitter/android/EditProfileActivity;->b()V

    return-void
.end method

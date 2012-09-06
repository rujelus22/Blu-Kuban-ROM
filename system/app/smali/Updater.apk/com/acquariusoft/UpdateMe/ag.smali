.class final Lcom/acquariusoft/UpdateMe/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/af;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/af;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/ag;->a:Lcom/acquariusoft/UpdateMe/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

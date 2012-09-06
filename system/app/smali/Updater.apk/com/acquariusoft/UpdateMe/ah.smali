.class final Lcom/acquariusoft/UpdateMe/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/af;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/af;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/ah;->a:Lcom/acquariusoft/UpdateMe/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/ah;->a:Lcom/acquariusoft/UpdateMe/af;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/af;->a:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->a:Lcom/mobfox/video/sdk/i;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/i;->b()V

    return-void
.end method

.class final Lcom/acquariusoft/UpdateMe/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/UpdateMeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/am;->a:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/am;->a:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->e:Lcom/acquariusoft/UpdateMe/q;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/acquariusoft/UpdateMe/q;->i:Z

    return-void
.end method

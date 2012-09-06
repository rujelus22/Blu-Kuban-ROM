.class final Lcom/acquariusoft/UpdateMe/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/x;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/x;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/y;->a:Lcom/acquariusoft/UpdateMe/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

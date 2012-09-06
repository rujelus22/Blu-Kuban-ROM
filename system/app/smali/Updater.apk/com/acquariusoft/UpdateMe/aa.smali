.class final Lcom/acquariusoft/UpdateMe/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/aa;->a:Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/aa;->a:Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;

    invoke-virtual {v0}, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/acquariusoft/UpdateMe/an;->e:I

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/aa;->a:Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->d:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/aa;->a:Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->d:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1a
    return-void
.end method

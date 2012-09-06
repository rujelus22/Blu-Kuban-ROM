.class final Lcom/acquariusoft/UpdateMe/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/commonsware/cwac/tlv/f;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/f;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/f;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/h;->a:Lcom/acquariusoft/UpdateMe/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/h;->a:Lcom/acquariusoft/UpdateMe/f;

    iget-object v1, v0, Lcom/acquariusoft/UpdateMe/f;->e:Lcom/acquariusoft/UpdateMe/m;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/h;->a:Lcom/acquariusoft/UpdateMe/f;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/f;->e:Lcom/acquariusoft/UpdateMe/m;

    invoke-virtual {v0, p1}, Lcom/acquariusoft/UpdateMe/m;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/acquariusoft/UpdateMe/m;->remove(Ljava/lang/Object;)V

    return-void
.end method

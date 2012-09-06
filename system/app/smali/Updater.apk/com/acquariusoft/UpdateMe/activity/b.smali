.class final Lcom/acquariusoft/UpdateMe/activity/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/activity/b;->a:Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    sget-object v0, Lcom/acquariusoft/UpdateMe/ao;->w:Lcom/acquariusoft/UpdateMe/b/b/c;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/b/c;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/b;->a:Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;

    iget v1, v1, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/b;->a:Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;

    invoke-virtual {v0}, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;->finish()V

    return-void
.end method

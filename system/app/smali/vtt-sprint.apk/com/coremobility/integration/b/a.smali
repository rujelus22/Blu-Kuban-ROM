.class public final Lcom/coremobility/integration/b/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>(Lcom/coremobility/integration/b/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    iget-object v0, p1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    if-nez v0, :cond_12

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    :goto_11
    return-void

    :cond_12
    new-instance v0, Landroid/content/ContentValues;

    iget-object v1, p1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    iput-object v0, p0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    goto :goto_11
.end method


# virtual methods
.method public final a(Ljava/lang/String;J)V
    .registers 6

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    iget-object v1, p0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v1, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

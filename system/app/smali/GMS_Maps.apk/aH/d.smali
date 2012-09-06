.class Lah/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Vector;

.field final synthetic b:Lah/a;


# direct methods
.method constructor <init>(Lah/a;Ljava/util/Vector;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lah/d;->b:Lah/a;

    iput-object p2, p0, Lah/d;->a:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 306
    iget-object v0, p0, Lah/d;->b:Lah/a;

    iget-object v1, p0, Lah/d;->a:Ljava/util/Vector;

    invoke-static {v0, v1}, Lah/a;->b(Lah/a;Ljava/util/Vector;)V

    .line 307
    return-void
.end method

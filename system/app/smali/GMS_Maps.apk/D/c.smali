.class public LD/c;
.super LC/b;
.source "SourceFile"


# instance fields
.field private final a:LD/m;


# direct methods
.method public constructor <init>(LD/m;)V
    .registers 4
    .parameter

    .prologue
    .line 20
    const-string v0, "location_recorder"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LC/b;-><init>(Ljava/lang/String;LC/T;)V

    .line 21
    iput-object p1, p0, LD/c;->a:LD/m;

    .line 22
    return-void
.end method


# virtual methods
.method public a(LC/R;)V
    .registers 3
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, LD/c;->a:LD/m;

    invoke-virtual {v0, p1}, LD/m;->a(LC/R;)V

    .line 27
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, LD/c;->a:LD/m;

    invoke-virtual {v0, p2}, LD/m;->b(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, LD/c;->a:LD/m;

    invoke-virtual {v0, p2, p3}, LD/m;->a(Ljava/lang/String;I)V

    .line 42
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, LD/c;->a:LD/m;

    invoke-virtual {v0, p2}, LD/m;->a(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 46
    invoke-super {p0}, LC/b;->f()V

    .line 47
    iget-object v0, p0, LD/c;->a:LD/m;

    invoke-virtual {v0}, LD/m;->a()V

    .line 48
    return-void
.end method

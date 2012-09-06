.class Lw/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/aF;


# instance fields
.field final synthetic a:Lw/e;


# direct methods
.method private constructor <init>(Lw/e;)V
    .registers 2
    .parameter

    .prologue
    .line 1173
    iput-object p1, p0, Lw/i;->a:Lw/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lw/e;Lw/f;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1173
    invoke-direct {p0, p1}, Lw/i;-><init>(Lw/e;)V

    return-void
.end method


# virtual methods
.method public a(Ln/am;ILn/al;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1177
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    .line 1188
    :cond_3
    :goto_3
    return-void

    .line 1182
    :cond_4
    iget-object v0, p0, Lw/i;->a:Lw/e;

    invoke-static {v0, p1, p2, p3}, Lw/e;->b(Lw/e;Ln/am;ILn/al;)Lcom/google/android/maps/driveabout/vector/aV;

    move-result-object v0

    .line 1184
    if-eqz v0, :cond_3

    .line 1185
    const-wide/16 v1, 0x0

    .line 1186
    iget-object v3, p0, Lw/i;->a:Lw/e;

    invoke-interface {p3}, Ln/al;->d()Ln/am;

    move-result-object v4

    invoke-static {v3, v4, v0, v1, v2}, Lw/e;->a(Lw/e;Ln/am;Lcom/google/android/maps/driveabout/vector/aV;J)V

    goto :goto_3
.end method

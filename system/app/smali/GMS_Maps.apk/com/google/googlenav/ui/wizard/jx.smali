.class Lcom/google/googlenav/ui/wizard/jx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/il;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ju;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 2
    .parameter

    .prologue
    .line 1144
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/jx;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 1152
    return-void
.end method

.method public a(Ljava/util/EnumSet;)V
    .registers 3
    .parameter

    .prologue
    .line 1147
    invoke-static {}, Lay/a;->z()Lay/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lay/a;->a(Ljava/util/EnumSet;)V

    .line 1148
    return-void
.end method

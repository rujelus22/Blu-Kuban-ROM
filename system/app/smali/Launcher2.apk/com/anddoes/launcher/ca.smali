.class public final Lcom/anddoes/launcher/ca;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Lcom/anddoes/launcher/preference/c;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/anddoes/launcher/preference/c;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/ca;->e:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/ca;->f:Ljava/util/ArrayList;

    .line 21
    iput-object p1, p0, Lcom/anddoes/launcher/ca;->d:Lcom/anddoes/launcher/preference/c;

    .line 22
    iput-object p2, p0, Lcom/anddoes/launcher/ca;->a:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/anddoes/launcher/ca;->b:Ljava/lang/String;

    .line 24
    iput-boolean p4, p0, Lcom/anddoes/launcher/ca;->c:Z

    .line 25
    return-void
.end method

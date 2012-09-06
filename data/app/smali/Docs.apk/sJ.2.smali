.class LsJ;
.super Ljava/lang/Object;
.source "FoldersThenTitleGrouper.java"

# interfaces
.implements LsM;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic a:LsI;


# direct methods
.method constructor <init>(LsI;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, LsJ;->a:LsI;

    iput-object p2, p0, LsJ;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 186
    const/4 v0, -0x1

    return v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, LsJ;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

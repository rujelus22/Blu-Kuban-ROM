.class final enum LdN;
.super LdL;
.source "ApplicationMode.java"


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/Class;IILnk;I)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, LdL;-><init>(Ljava/lang/String;ILjava/lang/Class;IILnk;ILdM;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/EnumSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "LsO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    const-class v0, LsO;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.class final Ljava/lang/reflect/Field$1;
.super Ljava/lang/Object;
.source "Field.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    check-cast p1, Ljava/lang/reflect/Field;

    .end local p1
    check-cast p2, Ljava/lang/reflect/Field;

    .end local p2
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field$1;->compare(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)I
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 55
    #getter for: Ljava/lang/reflect/Field;->name:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/reflect/Field;->access$000(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    #getter for: Ljava/lang/reflect/Field;->name:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/reflect/Field;->access$000(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 56
    .local v0, comparison:I
    if-eqz v0, :cond_f

    .line 60
    .end local v0           #comparison:I
    :goto_e
    return v0

    .restart local v0       #comparison:I
    :cond_f
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_e
.end method

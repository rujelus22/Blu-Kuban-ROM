.class Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;
.super Ljava/lang/Object;
.source "TestGrouping.java"

# interfaces
.implements Lcom/android/internal/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/suitebuilder/TestGrouping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TestCasePredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Predicate",
        "<",
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 213
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/test/suitebuilder/TestGrouping$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 213
    invoke-direct {p0}, Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;-><init>()V

    return-void
.end method

.method private hasValidConstructor(Ljava/lang/Class;)Z
    .registers 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, aClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 228
    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Constructor;

    .line 230
    .local v2, constructors:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<+Ljunit/framework/TestCase;>;"
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/reflect/Constructor;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_b
    if-ge v3, v4, :cond_2d

    aget-object v1, v0, v3

    .line 231
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Ljunit/framework/TestCase;>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 232
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 233
    .local v5, parameterTypes:[Ljava/lang/Class;
    array-length v8, v5

    if-eqz v8, :cond_29

    array-length v8, v5

    if-ne v8, v6, :cond_2a

    aget-object v8, v5, v7

    const-class v9, Ljava/lang/String;

    if-ne v8, v9, :cond_2a

    .line 243
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Ljunit/framework/TestCase;>;"
    .end local v5           #parameterTypes:[Ljava/lang/Class;
    :cond_29
    :goto_29
    return v6

    .line 230
    .restart local v1       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Ljunit/framework/TestCase;>;"
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 239
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Ljunit/framework/TestCase;>;"
    :cond_2d
    const-string v8, "TestGrouping"

    const-string v9, "TestCase class %s is missing a public constructor with no parameters or a single String parameter - skipping"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v7

    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 243
    goto :goto_29
.end method


# virtual methods
.method public apply(Ljava/lang/Class;)Z
    .registers 4
    .parameter "aClass"

    .prologue
    .line 216
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    .line 217
    .local v0, modifiers:I
    const-class v1, Ljunit/framework/TestCase;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-direct {p0, p1}, Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;->hasValidConstructor(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 213
    check-cast p1, Ljava/lang/Class;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;->apply(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

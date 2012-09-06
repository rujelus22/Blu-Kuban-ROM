.class public Lk/n;
.super LA/j;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/l;

.field private final b:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 4
    .parameter

    .prologue
    .line 1067
    invoke-direct {p0}, LA/j;-><init>()V

    .line 1068
    const-string v0, "pos"

    invoke-static {p1, v0}, Lk/n;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lk/n;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    iput-object v0, p0, Lk/n;->a:Lcom/google/android/maps/driveabout/vector/l;

    .line 1069
    const-string v0, "duration"

    const-string v1, "1000"

    invoke-static {p1, v0, v1}, Lk/n;->a(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lk/n;->b:I

    .line 1070
    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/vector/l;
    .registers 7
    .parameter

    .prologue
    .line 1092
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1094
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ln/Q;->a(DD)Ln/Q;

    move-result-object v1

    .line 1096
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1097
    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 1098
    const/4 v4, 0x4

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 1099
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    return-object v0
.end method

.method private static a(Lcom/google/android/maps/driveabout/vector/l;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1083
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/l;->b()Ln/Q;

    move-result-object v1

    invoke-virtual {v1}, Ln/Q;->b()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/l;->b()Ln/Q;

    move-result-object v1

    invoke-virtual {v1}, Ln/Q;->d()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1088
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/io/Writer;)V
    .registers 4
    .parameter

    .prologue
    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<camera pos=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/n;->a:Lcom/google/android/maps/driveabout/vector/l;

    invoke-static {v1}, Lk/n;->a(Lcom/google/android/maps/driveabout/vector/l;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lk/k;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1079
    return-void
.end method

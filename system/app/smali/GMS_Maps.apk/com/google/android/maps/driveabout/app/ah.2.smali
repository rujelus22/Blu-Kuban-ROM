.class Lcom/google/android/maps/driveabout/app/ah;
.super Ljava/lang/Object;


# static fields
.field private static final g:[Ljava/lang/String;


# instance fields
.field final a:I

.field final b:Lt/o;

.field final c:Lu/P;

.field final d:J

.field final e:I

.field final f:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "time"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dest_lat"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "dest_lng"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "dest_address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "dest_title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "dest_token"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "source_lat"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "source_lng"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "day_of_week"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hour_of_day"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/maps/driveabout/app/ah;->g:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(ILt/o;Lu/P;JII)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/app/ah;->a:I

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/ah;->c:Lu/P;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/ah;->b:Lt/o;

    iput-wide p4, p0, Lcom/google/android/maps/driveabout/app/ah;->d:J

    iput p6, p0, Lcom/google/android/maps/driveabout/app/ah;->e:I

    iput p7, p0, Lcom/google/android/maps/driveabout/app/ah;->f:I

    return-void
.end method

.method static a(ILandroid/database/Cursor;)Lcom/google/android/maps/driveabout/app/ah;
    .registers 15

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/16 v3, 0x8

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v3, 0x9

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    new-instance v3, Lu/P;

    new-instance v12, Lu/Q;

    invoke-direct {v12, v2}, Lu/Q;-><init>(Ljava/lang/String;)V

    new-instance v2, Lt/o;

    invoke-direct {v2, v0, v1}, Lt/o;-><init>(II)V

    invoke-direct {v3, v12, v2, v8, v9}, Lu/P;-><init>(Lu/Q;Lt/o;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lt/o;

    invoke-direct {v2, v10, v11}, Lt/o;-><init>(II)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ah;

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/app/ah;-><init>(ILt/o;Lu/P;JII)V

    return-object v0
.end method

.method static synthetic b()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/maps/driveabout/app/ah;->g:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a()Landroid/content/ContentValues;
    .registers 5

    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "time"

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/app/ah;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "dest_lat"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ah;->c:Lu/P;

    invoke-virtual {v2}, Lu/P;->c()Lt/o;

    move-result-object v2

    invoke-virtual {v2}, Lt/o;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "dest_lng"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ah;->c:Lu/P;

    invoke-virtual {v2}, Lu/P;->c()Lt/o;

    move-result-object v2

    invoke-virtual {v2}, Lt/o;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "dest_address"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ah;->c:Lu/P;

    invoke-virtual {v2}, Lu/P;->d()Lu/Q;

    move-result-object v2

    invoke-virtual {v2}, Lu/Q;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dest_title"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ah;->c:Lu/P;

    invoke-virtual {v2}, Lu/P;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dest_token"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ah;->c:Lu/P;

    invoke-virtual {v2}, Lu/P;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "source_lat"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ah;->b:Lt/o;

    invoke-virtual {v2}, Lt/o;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "source_lng"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ah;->b:Lt/o;

    invoke-virtual {v2}, Lt/o;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "day_of_week"

    iget v2, p0, Lcom/google/android/maps/driveabout/app/ah;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "hour_of_day"

    iget v2, p0, Lcom/google/android/maps/driveabout/app/ah;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

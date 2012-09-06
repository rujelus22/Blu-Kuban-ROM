.class Lcom/google/android/maps/driveabout/app/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final g:[Ljava/lang/String;


# instance fields
.field final a:I

.field final b:Ln/s;

.field final c:Lo/P;

.field final d:J

.field final e:I

.field final f:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 176
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

    sput-object v0, Lcom/google/android/maps/driveabout/app/ag;->g:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(ILn/s;Lo/P;JII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput p1, p0, Lcom/google/android/maps/driveabout/app/ag;->a:I

    .line 199
    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/ag;->c:Lo/P;

    .line 200
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/ag;->b:Ln/s;

    .line 201
    iput-wide p4, p0, Lcom/google/android/maps/driveabout/app/ag;->d:J

    .line 202
    iput p6, p0, Lcom/google/android/maps/driveabout/app/ag;->e:I

    .line 203
    iput p7, p0, Lcom/google/android/maps/driveabout/app/ag;->f:I

    .line 204
    return-void
.end method

.method static a(ILandroid/database/Cursor;)Lcom/google/android/maps/driveabout/app/ag;
    .registers 15
    .parameter
    .parameter

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 212
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 213
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 214
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 215
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 216
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 217
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 218
    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 219
    const/16 v3, 0x8

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 220
    const/16 v3, 0x9

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 222
    new-instance v3, Lo/P;

    new-instance v12, Lo/Q;

    invoke-direct {v12, v2}, Lo/Q;-><init>(Ljava/lang/String;)V

    new-instance v2, Ln/s;

    invoke-direct {v2, v0, v1}, Ln/s;-><init>(II)V

    invoke-direct {v3, v12, v2, v8, v9}, Lo/P;-><init>(Lo/Q;Ln/s;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance v2, Ln/s;

    invoke-direct {v2, v10, v11}, Ln/s;-><init>(II)V

    .line 225
    new-instance v0, Lcom/google/android/maps/driveabout/app/ag;

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/app/ag;-><init>(ILn/s;Lo/P;JII)V

    return-object v0
.end method

.method static synthetic b()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 158
    sget-object v0, Lcom/google/android/maps/driveabout/app/ag;->g:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a()Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 231
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 232
    const-string v1, "time"

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/app/ag;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 233
    const-string v1, "dest_lat"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ag;->c:Lo/P;

    invoke-virtual {v2}, Lo/P;->c()Ln/s;

    move-result-object v2

    invoke-virtual {v2}, Ln/s;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    const-string v1, "dest_lng"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ag;->c:Lo/P;

    invoke-virtual {v2}, Lo/P;->c()Ln/s;

    move-result-object v2

    invoke-virtual {v2}, Ln/s;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    const-string v1, "dest_address"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ag;->c:Lo/P;

    invoke-virtual {v2}, Lo/P;->d()Lo/Q;

    move-result-object v2

    invoke-virtual {v2}, Lo/Q;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v1, "dest_title"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ag;->c:Lo/P;

    invoke-virtual {v2}, Lo/P;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v1, "dest_token"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ag;->c:Lo/P;

    invoke-virtual {v2}, Lo/P;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v1, "source_lat"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ag;->b:Ln/s;

    invoke-virtual {v2}, Ln/s;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    const-string v1, "source_lng"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ag;->b:Ln/s;

    invoke-virtual {v2}, Ln/s;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    const-string v1, "day_of_week"

    iget v2, p0, Lcom/google/android/maps/driveabout/app/ag;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    const-string v1, "hour_of_day"

    iget v2, p0, Lcom/google/android/maps/driveabout/app/ag;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    return-object v0
.end method

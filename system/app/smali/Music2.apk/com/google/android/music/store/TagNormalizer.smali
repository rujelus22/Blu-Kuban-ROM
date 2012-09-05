.class public Lcom/google/android/music/store/TagNormalizer;
.super Ljava/lang/Object;
.source "TagNormalizer.java"


# static fields
.field private static TO_LOWER_LATIN:[C

.field private static final ZZ_ACTION:[I

.field private static final ZZ_ATTRIBUTE:[I

.field private static final ZZ_CMAP:[C

.field private static final ZZ_ERROR_MSG:[Ljava/lang/String;

.field private static final ZZ_LEXSTATE:[I

.field private static final ZZ_ROWMAP:[I

.field private static final ZZ_TRANS:[I


# instance fields
.field private mResult:Ljava/lang/StringBuffer;

.field private yychar:I

.field private yycolumn:I

.field private yyline:I

.field private zzAtBOL:Z

.field private zzAtEOF:Z

.field private zzBuffer:[C

.field private zzCurrentPos:I

.field private zzEOFDone:Z

.field private zzEndRead:I

.field private zzLexicalState:I

.field private zzMarkedPos:I

.field private zzReader:Ljava/io/Reader;

.field private zzStartRead:I

.field private zzState:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    .line 38
    new-array v0, v3, [I

    fill-array-data v0, :array_46

    sput-object v0, Lcom/google/android/music/store/TagNormalizer;->ZZ_LEXSTATE:[I

    .line 113
    const-string v0, "\t\u0000\u0001\u0002\u0001\u0017\u0015\u0000\u0001\u0016\u0001\u001b\u0001\u0006\u0001\u0018\u0002\u0006\u0001\u0013\u0005\u0006\u0001\u0015\u0001\u0006\u0001\u0004\u0001\u0006\n\u0019\u0002\u0001\u0005\u0006\u001a\u0003\u0006\u0006\u0001\n\u0002\u0003\u0001\u000f\u0001\t\u0002\u0003\u0001\u0008\u0001\u0011\u0001\u0003\u0001\u001c\u0001\u000c\u0001\u0010\u0001\u000b\u0001\u0012\u0001\u001a\u0001\u0003\u0001\u0010\u0001\r\u0001\u0007\u0001\u000e\u0003\u0003\u0001\u0014\u0001\u0003\u0004\u0006+\u0000\u0001\u0003\n\u0000\u0001\u0003\u0004\u0000\u0001\u0003\u0005\u0000\u0017\u0003\u0001\u0000\u001f\u0003\u0001\u0000\u013f\u0003\u0019\u0000r\u0003\u0004\u0000\u000c\u0003\u000e\u0000\u0005\u0003\t\u0000\u0001\u0003\u008b\u0000\u0001\u0003\u000b\u0000\u0001\u0003\u0001\u0000\u0003\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0014\u0003\u0001\u0000,\u0003\u0001\u0000&\u0003\u0001\u0000\u0005\u0003\u0004\u0000\u0082\u0003\u0008\u0000E\u0003\u0001\u0000&\u0003\u0002\u0000\u0002\u0003\u0006\u0000\u0010\u0003!\u0000&\u0003\u0002\u0000\u0001\u0003\u0007\u0000\'\u0003H\u0000\u001b\u0003\u0005\u0000\u0003\u0003.\u0000\u001a\u0003\u0005\u0000\u000b\u0003\u0015\u0000\n\u0005\u0004\u0000\u0002\u0003\u0001\u0000c\u0003\u0001\u0000\u0001\u0003\u000f\u0000\u0002\u0003\u0007\u0000\u0002\u0003\n\u0005\u0003\u0003\u0002\u0000\u0001\u0003\u0010\u0000\u0001\u0003\u0001\u0000\u001e\u0003\u001d\u0000\u0003\u00030\u0000&\u0003\u000b\u0000\u0001\u0003\u0152\u00006\u0003\u0003\u0000\u0001\u0003\u0012\u0000\u0001\u0003\u0007\u0000\n\u0003\u0004\u0000\n\u0005\u0015\u0000\u0008\u0003\u0002\u0000\u0002\u0003\u0002\u0000\u0016\u0003\u0001\u0000\u0007\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0004\u0003\u0003\u0000\u0001\u0003\u001e\u0000\u0002\u0003\u0001\u0000\u0003\u0003\u0004\u0000\n\u0005\u0002\u0003\u0013\u0000\u0006\u0003\u0004\u0000\u0002\u0003\u0002\u0000\u0016\u0003\u0001\u0000\u0007\u0003\u0001\u0000\u0002\u0003\u0001\u0000\u0002\u0003\u0001\u0000\u0002\u0003\u001f\u0000\u0004\u0003\u0001\u0000\u0001\u0003\u0007\u0000\n\u0005\u0002\u0000\u0003\u0003\u0010\u0000\t\u0003\u0001\u0000\u0003\u0003\u0001\u0000\u0016\u0003\u0001\u0000\u0007\u0003\u0001\u0000\u0002\u0003\u0001\u0000\u0005\u0003\u0003\u0000\u0001\u0003\u0012\u0000\u0001\u0003\u000f\u0000\u0002\u0003\u0004\u0000\n\u0005\u0015\u0000\u0008\u0003\u0002\u0000\u0002\u0003\u0002\u0000\u0016\u0003\u0001\u0000\u0007\u0003\u0001\u0000\u0002\u0003\u0001\u0000\u0005\u0003\u0003\u0000\u0001\u0003\u001e\u0000\u0002\u0003\u0001\u0000\u0003\u0003\u0004\u0000\n\u0005\u0001\u0000\u0001\u0003\u0011\u0000\u0001\u0003\u0001\u0000\u0006\u0003\u0003\u0000\u0003\u0003\u0001\u0000\u0004\u0003\u0003\u0000\u0002\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0002\u0003\u0003\u0000\u0002\u0003\u0003\u0000\u0003\u0003\u0003\u0000\u0008\u0003\u0001\u0000\u0003\u0003-\u0000\t\u0005\u0015\u0000\u0008\u0003\u0001\u0000\u0003\u0003\u0001\u0000\u0017\u0003\u0001\u0000\n\u0003\u0001\u0000\u0005\u0003&\u0000\u0002\u0003\u0004\u0000\n\u0005\u0015\u0000\u0008\u0003\u0001\u0000\u0003\u0003\u0001\u0000\u0017\u0003\u0001\u0000\n\u0003\u0001\u0000\u0005\u0003\u0003\u0000\u0001\u0003 \u0000\u0001\u0003\u0001\u0000\u0002\u0003\u0004\u0000\n\u0005\u0015\u0000\u0008\u0003\u0001\u0000\u0003\u0003\u0001\u0000\u0017\u0003\u0001\u0000\u0010\u0003&\u0000\u0002\u0003\u0004\u0000\n\u0005\u0015\u0000\u0012\u0003\u0003\u0000\u0018\u0003\u0001\u0000\t\u0003\u0001\u0000\u0001\u0003\u0002\u0000\u0007\u0003:\u00000\u0003\u0001\u0000\u0002\u0003\u000c\u0000\u0007\u0003\t\u0000\n\u0005\'\u0000\u0002\u0003\u0001\u0000\u0001\u0003\u0002\u0000\u0002\u0003\u0001\u0000\u0001\u0003\u0002\u0000\u0001\u0003\u0006\u0000\u0004\u0003\u0001\u0000\u0007\u0003\u0001\u0000\u0003\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0001\u0003\u0002\u0000\u0002\u0003\u0001\u0000\u0004\u0003\u0001\u0000\u0002\u0003\t\u0000\u0001\u0003\u0002\u0000\u0005\u0003\u0001\u0000\u0001\u0003\t\u0000\n\u0005\u0002\u0000\u0002\u0003\"\u0000\u0001\u0003\u001f\u0000\n\u0005\u0016\u0000\u0008\u0003\u0001\u0000\"\u0003\u001d\u0000\u0004\u0003t\u0000\"\u0003\u0001\u0000\u0005\u0003\u0001\u0000\u0002\u0003\u0015\u0000\n\u0005\u0006\u0000\u0006\u0003J\u0000&\u0003\n\u0000)\u0003\u0007\u0000Z\u0003\u0005\u0000D\u0003\u0005\u0000R\u0003\u0006\u0000\u0007\u0003\u0001\u0000?\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0004\u0003\u0002\u0000\u0007\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0004\u0003\u0002\u0000\'\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0004\u0003\u0002\u0000\u001f\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0004\u0003\u0002\u0000\u0007\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0004\u0003\u0002\u0000\u0007\u0003\u0001\u0000\u0007\u0003\u0001\u0000\u0017\u0003\u0001\u0000\u001f\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0004\u0003\u0002\u0000\u0007\u0003\u0001\u0000\'\u0003\u0001\u0000\u0013\u0003\u000e\u0000\t\u0005.\u0000U\u0003\u000c\u0000\u026c\u0003\u0002\u0000\u0008\u0003\n\u0000\u001a\u0003\u0005\u0000K\u0003\u0015\u0000\r\u0003\u0001\u0000\u0004\u0003\u000e\u0000\u0012\u0003\u000e\u0000\u0012\u0003\u000e\u0000\r\u0003\u0001\u0000\u0003\u0003\u000f\u00004\u0003#\u0000\u0001\u0003\u0004\u0000\u0001\u0003\u0003\u0000\n\u0005&\u0000\n\u0005\u0006\u0000X\u0003\u0008\u0000)\u0003W\u0000\u001d\u0003)\u0000\n\u0005\u001e\u0003\u0002\u0000\u0005\u0003\u038b\u0000l\u0003\u0094\u0000\u009c\u0003\u0004\u0000Z\u0003\u0006\u0000\u0016\u0003\u0002\u0000\u0006\u0003\u0002\u0000&\u0003\u0002\u0000\u0006\u0003\u0002\u0000\u0008\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u001f\u0003\u0002\u00005\u0003\u0001\u0000\u0007\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0003\u0003\u0001\u0000\u0007\u0003\u0003\u0000\u0004\u0003\u0002\u0000\u0006\u0003\u0004\u0000\r\u0003\u0005\u0000\u0003\u0003\u0001\u0000\u0007\u0003t\u0000\u0001\u0003\r\u0000\u0001\u0003\u0082\u0000\u0001\u0003\u0004\u0000\u0001\u0003\u0002\u0000\n\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0005\u0003\u0006\u0000\u0001\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0004\u0003\u0001\u0000\u0003\u0003\u0001\u0000\u0007\u0003\u0003\u0000\u0003\u0003\u0005\u0000\u0005\u0003\u0ebb\u0000\u0002\u0003*\u0000\u0005\u0003\u0005\u0000\u0002\u0003\u0004\u0000V\u0003\u0006\u0000\u0003\u0003\u0001\u0000Z\u0003\u0001\u0000\u0004\u0003\u0005\u0000(\u0003\u0004\u0000^\u0003\u0011\u0000\u0018\u00038\u0000\u0010\u0003\u0200\u0000\u19b6\u0003J\u0000\u51a6\u0003Z\u0000\u048d\u0003\u0773\u0000\u2ba4\u0003\u215c\u0000\u012e\u0003\u0002\u0000;\u0003\u0095\u0000\u0007\u0003\u000c\u0000\u0005\u0003\u0005\u0000\u0001\u0003\u0001\u0000\n\u0003\u0001\u0000\r\u0003\u0001\u0000\u0005\u0003\u0001\u0000\u0001\u0003\u0001\u0000\u0002\u0003\u0001\u0000\u0002\u0003\u0001\u0000l\u0003!\u0000\u016b\u0003\u0012\u0000@\u0003\u0002\u00006\u0003(\u0000\u000c\u0003t\u0000\u0005\u0003\u0001\u0000\u0087\u0003\u0013\u0000\n\u0005\u0007\u0000\u001a\u0003\u0006\u0000\u001a\u0003\u000b\u0000Y\u0003\u0003\u0000\u0006\u0003\u0002\u0000\u0006\u0003\u0002\u0000\u0006\u0003\u0002\u0000\u0003\u0003#\u0000"

    invoke-static {v0}, Lcom/google/android/music/store/TagNormalizer;->zzUnpackCMap(Ljava/lang/String;)[C

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/TagNormalizer;->ZZ_CMAP:[C

    .line 118
    invoke-static {}, Lcom/google/android/music/store/TagNormalizer;->zzUnpackAction()[I

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/TagNormalizer;->ZZ_ACTION:[I

    .line 150
    invoke-static {}, Lcom/google/android/music/store/TagNormalizer;->zzUnpackRowMap()[I

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/TagNormalizer;->ZZ_ROWMAP:[I

    .line 186
    invoke-static {}, Lcom/google/android/music/store/TagNormalizer;->zzUnpackTrans()[I

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/TagNormalizer;->ZZ_TRANS:[I

    .line 318
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Unkown internal scanner error"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Error: could not match input"

    aput-object v2, v0, v1

    const-string v1, "Error: pushback value was too large"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/music/store/TagNormalizer;->ZZ_ERROR_MSG:[Ljava/lang/String;

    .line 327
    invoke-static {}, Lcom/google/android/music/store/TagNormalizer;->zzUnpackAttribute()[I

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/TagNormalizer;->ZZ_ATTRIBUTE:[I

    .line 408
    const/16 v0, 0x100

    new-array v0, v0, [C

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/google/android/music/store/TagNormalizer;->TO_LOWER_LATIN:[C

    return-void

    .line 38
    nop

    :array_46
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 408
    :array_4e
    .array-data 0x2
        0x0t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x21t 0x0t
        0x22t 0x0t
        0x23t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x26t 0x0t
        0x27t 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2ct 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x2ft 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x3at 0x0t
        0x3bt 0x0t
        0x3ct 0x0t
        0x3dt 0x0t
        0x3et 0x0t
        0x3ft 0x0t
        0x40t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x5bt 0x0t
        0x2ft 0x0t
        0x5dt 0x0t
        0x5et 0x0t
        0x5ft 0x0t
        0x27t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x7bt 0x0t
        0x7ct 0x0t
        0x7dt 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x63t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x64t 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x20t 0x0t
        0x6ft 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x79t 0x0t
        0x74t 0x0t
        0x73t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x63t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x64t 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x20t 0x0t
        0x6ft 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x79t 0x0t
        0x74t 0x0t
        0x79t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 477
    new-instance v0, Ljava/io/StringReader;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/music/store/TagNormalizer;-><init>(Ljava/io/Reader;)V

    .line 478
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzLexicalState:I

    .line 365
    const/16 v0, 0x4000

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzAtBOL:Z

    .line 404
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    .line 599
    iput-object p1, p0, Lcom/google/android/music/store/TagNormalizer;->zzReader:Ljava/io/Reader;

    .line 600
    return-void
.end method

.method private appendAcronym()V
    .registers 4

    .prologue
    .line 559
    iget v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    .local v0, i:I
    :goto_2
    iget v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    if-ge v0, v1, :cond_1a

    .line 560
    iget-object v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    aget-char v1, v1, v0

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_17

    .line 561
    iget-object v1, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 559
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 565
    :cond_1a
    iget-object v1, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 566
    return-void
.end method

.method private appendLetters()V
    .registers 4

    .prologue
    .line 549
    iget v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    .local v0, i:I
    :goto_2
    iget v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    if-ge v0, v1, :cond_1c

    .line 550
    iget-object v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    aget-char v1, v1, v0

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 551
    iget-object v1, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 549
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 555
    :cond_1c
    iget-object v1, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 556
    return-void
.end method

.method private appendNameArticle()V
    .registers 4

    .prologue
    .line 569
    iget v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    .local v0, i:I
    :goto_2
    iget v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    if-ge v0, v1, :cond_e

    .line 570
    iget-object v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    aget-char v1, v1, v0

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_16

    .line 577
    :cond_e
    iget-object v1, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 578
    return-void

    .line 573
    :cond_16
    iget-object v1, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 569
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private appendSortableNumberFromOffset(I)V
    .registers 11
    .parameter "offset"

    .prologue
    .line 527
    new-instance v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    iget v6, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    add-int/2addr v6, p1

    iget v7, p0, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    iget v8, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, p1

    invoke-direct {v3, v5, v6, v7}, Ljava/lang/String;-><init>([CII)V

    .line 530
    .local v3, numberString:Ljava/lang/String;
    :try_start_10
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 531
    .local v2, number:I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, normalizedNumberStr:Ljava/lang/String;
    const-string v5, "0000000000"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v4, v5, v6

    .line 533
    .local v4, zerosToAdd:I
    if-lez v4, :cond_2e

    .line 534
    iget-object v5, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    const-string v6, "0000000000"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 536
    :cond_2e
    iget-object v5, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_33} :catch_3b

    .line 541
    .end local v1           #normalizedNumberStr:Ljava/lang/String;
    .end local v2           #number:I
    .end local v4           #zerosToAdd:I
    :goto_33
    iget-object v5, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 542
    return-void

    .line 537
    :catch_3b
    move-exception v0

    .line 538
    .local v0, e:Ljava/lang/NumberFormatException;
    iget-object v5, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_33
.end method

.method private appendToken()V
    .registers 6

    .prologue
    .line 545
    iget-object v0, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    iget v2, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    iget v3, p0, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    iget v4, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 546
    return-void
.end method

.method private final yyclose()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzAtEOF:Z

    .line 690
    iget v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    iput v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzEndRead:I

    .line 692
    iget-object v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzReader:Ljava/io/Reader;

    if-eqz v0, :cond_10

    .line 693
    iget-object v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzReader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 694
    :cond_10
    return-void
.end method

.method private yylex()I
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 826
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/music/store/TagNormalizer;->zzEndRead:I

    .line 827
    .local v9, zzEndReadL:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    .line 828
    .local v5, zzBufferL:[C
    sget-object v6, Lcom/google/android/music/store/TagNormalizer;->ZZ_CMAP:[C

    .line 830
    .local v6, zzCMapL:[C
    sget-object v14, Lcom/google/android/music/store/TagNormalizer;->ZZ_TRANS:[I

    .line 831
    .local v14, zzTransL:[I
    sget-object v13, Lcom/google/android/music/store/TagNormalizer;->ZZ_ROWMAP:[I

    .line 832
    .local v13, zzRowMapL:[I
    sget-object v3, Lcom/google/android/music/store/TagNormalizer;->ZZ_ATTRIBUTE:[I

    .line 835
    .local v3, zzAttrL:[I
    :goto_10
    :pswitch_10
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    .line 837
    .local v11, zzMarkedPosL:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    if-le v11, v15, :cond_26

    .line 838
    add-int/lit8 v15, v11, -0x1

    aget-char v15, v5, v15

    sparse-switch v15, :sswitch_data_180

    .line 864
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/android/music/store/TagNormalizer;->zzAtBOL:Z

    .line 867
    :cond_26
    :goto_26
    const/4 v2, -0x1

    .line 869
    .local v2, zzAction:I
    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/music/store/TagNormalizer;->zzCurrentPos:I

    move v7, v11

    .line 871
    .local v7, zzCurrentPosL:I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/music/store/TagNormalizer;->zzAtBOL:Z

    if-eqz v15, :cond_cb

    .line 872
    sget-object v15, Lcom/google/android/music/store/TagNormalizer;->ZZ_LEXSTATE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/TagNormalizer;->zzLexicalState:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    aget v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/music/store/TagNormalizer;->zzState:I

    move v8, v7

    .line 880
    .end local v7           #zzCurrentPosL:I
    .local v8, zzCurrentPosL:I
    :goto_47
    if-ge v8, v9, :cond_dc

    .line 881
    add-int/lit8 v7, v8, 0x1

    .end local v8           #zzCurrentPosL:I
    .restart local v7       #zzCurrentPosL:I
    aget-char v10, v5, v8

    .line 904
    .local v10, zzInput:I
    :goto_4d
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/music/store/TagNormalizer;->zzState:I

    aget v15, v13, v15

    aget-char v16, v6, v10

    add-int v15, v15, v16

    aget v12, v14, v15

    .line 905
    .local v12, zzNext:I
    const/4 v15, -0x1

    if-ne v12, v15, :cond_10e

    .line 919
    .end local v12           #zzNext:I
    :cond_5c
    :goto_5c
    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    .line 921
    if-gez v2, :cond_130

    .end local v2           #zzAction:I
    :goto_62
    packed-switch v2, :pswitch_data_19e

    .line 967
    const/4 v15, -0x1

    if-ne v10, v15, :cond_178

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/TagNormalizer;->zzCurrentPos:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_178

    .line 968
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/android/music/store/TagNormalizer;->zzAtEOF:Z

    .line 969
    const/4 v15, -0x1

    return v15

    .line 845
    .end local v7           #zzCurrentPosL:I
    .end local v10           #zzInput:I
    :sswitch_7d
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/android/music/store/TagNormalizer;->zzAtBOL:Z

    goto :goto_26

    .line 848
    :sswitch_83
    if-ge v11, v9, :cond_95

    .line 849
    aget-char v15, v5, v11

    const/16 v16, 0xa

    move/from16 v0, v16

    if-eq v15, v0, :cond_93

    const/4 v15, 0x1

    :goto_8e
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/android/music/store/TagNormalizer;->zzAtBOL:Z

    goto :goto_26

    :cond_93
    const/4 v15, 0x0

    goto :goto_8e

    .line 850
    :cond_95
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/music/store/TagNormalizer;->zzAtEOF:Z

    if-eqz v15, :cond_a1

    .line 851
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/android/music/store/TagNormalizer;->zzAtBOL:Z

    goto :goto_26

    .line 853
    :cond_a1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/TagNormalizer;->zzRefill()Z

    move-result v1

    .line 854
    .local v1, eof:Z
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    .line 855
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/music/store/TagNormalizer;->zzEndRead:I

    .line 856
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    .line 857
    if-eqz v1, :cond_ba

    .line 858
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/android/music/store/TagNormalizer;->zzAtBOL:Z

    goto/16 :goto_26

    .line 860
    :cond_ba
    aget-char v15, v5, v11

    const/16 v16, 0xa

    move/from16 v0, v16

    if-eq v15, v0, :cond_c9

    const/4 v15, 0x1

    :goto_c3
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/android/music/store/TagNormalizer;->zzAtBOL:Z

    goto/16 :goto_26

    :cond_c9
    const/4 v15, 0x0

    goto :goto_c3

    .line 874
    .end local v1           #eof:Z
    .restart local v2       #zzAction:I
    .restart local v7       #zzCurrentPosL:I
    :cond_cb
    sget-object v15, Lcom/google/android/music/store/TagNormalizer;->ZZ_LEXSTATE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/TagNormalizer;->zzLexicalState:I

    move/from16 v16, v0

    aget v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/music/store/TagNormalizer;->zzState:I

    move v8, v7

    .end local v7           #zzCurrentPosL:I
    .restart local v8       #zzCurrentPosL:I
    goto/16 :goto_47

    .line 882
    :cond_dc
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/music/store/TagNormalizer;->zzAtEOF:Z

    if-eqz v15, :cond_e6

    .line 883
    const/4 v10, -0x1

    .restart local v10       #zzInput:I
    move v7, v8

    .line 884
    .end local v8           #zzCurrentPosL:I
    .restart local v7       #zzCurrentPosL:I
    goto/16 :goto_5c

    .line 888
    .end local v7           #zzCurrentPosL:I
    .end local v10           #zzInput:I
    .restart local v8       #zzCurrentPosL:I
    :cond_e6
    move-object/from16 v0, p0

    iput v8, v0, Lcom/google/android/music/store/TagNormalizer;->zzCurrentPos:I

    .line 889
    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    .line 890
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/TagNormalizer;->zzRefill()Z

    move-result v1

    .line 892
    .restart local v1       #eof:Z
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/music/store/TagNormalizer;->zzCurrentPos:I

    .line 893
    .end local v8           #zzCurrentPosL:I
    .restart local v7       #zzCurrentPosL:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    .line 894
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    .line 895
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/music/store/TagNormalizer;->zzEndRead:I

    .line 896
    if-eqz v1, :cond_107

    .line 897
    const/4 v10, -0x1

    .line 898
    .restart local v10       #zzInput:I
    goto/16 :goto_5c

    .line 901
    .end local v10           #zzInput:I
    :cond_107
    add-int/lit8 v8, v7, 0x1

    .end local v7           #zzCurrentPosL:I
    .restart local v8       #zzCurrentPosL:I
    aget-char v10, v5, v7

    .restart local v10       #zzInput:I
    move v7, v8

    .end local v8           #zzCurrentPosL:I
    .restart local v7       #zzCurrentPosL:I
    goto/16 :goto_4d

    .line 906
    .end local v1           #eof:Z
    .restart local v12       #zzNext:I
    :cond_10e
    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/music/store/TagNormalizer;->zzState:I

    .line 908
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/music/store/TagNormalizer;->zzState:I

    aget v4, v3, v15

    .line 909
    .local v4, zzAttributes:I
    and-int/lit8 v15, v4, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_12d

    .line 910
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/store/TagNormalizer;->zzState:I

    .line 911
    move v11, v7

    .line 912
    and-int/lit8 v15, v4, 0x8

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_5c

    :cond_12d
    move v8, v7

    .line 915
    .end local v7           #zzCurrentPosL:I
    .restart local v8       #zzCurrentPosL:I
    goto/16 :goto_47

    .line 921
    .end local v4           #zzAttributes:I
    .end local v8           #zzCurrentPosL:I
    .end local v12           #zzNext:I
    .restart local v7       #zzCurrentPosL:I
    :cond_130
    sget-object v15, Lcom/google/android/music/store/TagNormalizer;->ZZ_ACTION:[I

    aget v2, v15, v2

    goto/16 :goto_62

    .line 923
    .end local v2           #zzAction:I
    :pswitch_136
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    const-string v16, "pink "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_10

    .line 927
    :pswitch_141
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/music/store/TagNormalizer;->appendSortableNumberFromOffset(I)V

    goto/16 :goto_10

    .line 931
    :pswitch_149
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/TagNormalizer;->appendToken()V

    goto/16 :goto_10

    .line 935
    :pswitch_14e
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/TagNormalizer;->appendAcronym()V

    goto/16 :goto_10

    .line 939
    :pswitch_153
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/TagNormalizer;->appendLetters()V

    goto/16 :goto_10

    .line 947
    :pswitch_158
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/music/store/TagNormalizer;->appendSortableNumberFromOffset(I)V

    goto/16 :goto_10

    .line 951
    :pswitch_160
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/TagNormalizer;->appendNameArticle()V

    goto/16 :goto_10

    .line 955
    :pswitch_165
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/music/store/TagNormalizer;->appendSortableNumberFromOffset(I)V

    goto/16 :goto_10

    .line 963
    :pswitch_16d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    const-string v16, "& "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_10

    .line 972
    :cond_178
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/music/store/TagNormalizer;->zzScanError(I)V

    goto/16 :goto_10

    .line 838
    :sswitch_data_180
    .sparse-switch
        0xa -> :sswitch_7d
        0xb -> :sswitch_7d
        0xc -> :sswitch_7d
        0xd -> :sswitch_83
        0x85 -> :sswitch_7d
        0x2028 -> :sswitch_7d
        0x2029 -> :sswitch_7d
    .end sparse-switch

    .line 921
    :pswitch_data_19e
    .packed-switch 0x1
        :pswitch_10
        :pswitch_149
        :pswitch_16d
        :pswitch_141
        :pswitch_158
        :pswitch_10
        :pswitch_14e
        :pswitch_160
        :pswitch_165
        :pswitch_153
        :pswitch_136
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method private final yyreset(Ljava/io/Reader;)V
    .registers 4
    .parameter "reader"

    .prologue
    const/4 v1, 0x0

    .line 708
    iput-object p1, p0, Lcom/google/android/music/store/TagNormalizer;->zzReader:Ljava/io/Reader;

    .line 709
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/store/TagNormalizer;->zzAtBOL:Z

    .line 710
    iput-boolean v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzAtEOF:Z

    .line 711
    iput-boolean v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzEOFDone:Z

    .line 712
    iput v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    iput v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzEndRead:I

    .line 713
    iput v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    iput v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzCurrentPos:I

    .line 714
    iput v1, p0, Lcom/google/android/music/store/TagNormalizer;->yycolumn:I

    iput v1, p0, Lcom/google/android/music/store/TagNormalizer;->yychar:I

    iput v1, p0, Lcom/google/android/music/store/TagNormalizer;->yyline:I

    .line 715
    iput v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzLexicalState:I

    .line 716
    return-void
.end method

.method private zzRefill()Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 641
    iget v5, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    if-lez v5, :cond_2b

    .line 642
    iget-object v5, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    iget v6, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    iget-object v7, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    iget v8, p0, Lcom/google/android/music/store/TagNormalizer;->zzEndRead:I

    iget v9, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    sub-int/2addr v8, v9

    invoke-static {v5, v6, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 647
    iget v5, p0, Lcom/google/android/music/store/TagNormalizer;->zzEndRead:I

    iget v6, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/music/store/TagNormalizer;->zzEndRead:I

    .line 648
    iget v5, p0, Lcom/google/android/music/store/TagNormalizer;->zzCurrentPos:I

    iget v6, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/music/store/TagNormalizer;->zzCurrentPos:I

    .line 649
    iget v5, p0, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    iget v6, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/music/store/TagNormalizer;->zzMarkedPos:I

    .line 650
    iput v3, p0, Lcom/google/android/music/store/TagNormalizer;->zzStartRead:I

    .line 654
    :cond_2b
    iget v5, p0, Lcom/google/android/music/store/TagNormalizer;->zzCurrentPos:I

    iget-object v6, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    array-length v6, v6

    if-lt v5, v6, :cond_42

    .line 656
    iget v5, p0, Lcom/google/android/music/store/TagNormalizer;->zzCurrentPos:I

    mul-int/lit8 v5, v5, 0x2

    new-array v1, v5, [C

    .line 657
    .local v1, newBuffer:[C
    iget-object v5, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    iget-object v6, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    array-length v6, v6

    invoke-static {v5, v3, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 658
    iput-object v1, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    .line 662
    .end local v1           #newBuffer:[C
    :cond_42
    iget-object v5, p0, Lcom/google/android/music/store/TagNormalizer;->zzReader:Ljava/io/Reader;

    iget-object v6, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    iget v7, p0, Lcom/google/android/music/store/TagNormalizer;->zzEndRead:I

    iget-object v8, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    array-length v8, v8

    iget v9, p0, Lcom/google/android/music/store/TagNormalizer;->zzEndRead:I

    sub-int/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/Reader;->read([CII)I

    move-result v2

    .line 665
    .local v2, numRead:I
    if-lez v2, :cond_5a

    .line 666
    iget v4, p0, Lcom/google/android/music/store/TagNormalizer;->zzEndRead:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/google/android/music/store/TagNormalizer;->zzEndRead:I

    .line 681
    :goto_59
    return v3

    .line 670
    :cond_5a
    if-nez v2, :cond_73

    .line 671
    iget-object v5, p0, Lcom/google/android/music/store/TagNormalizer;->zzReader:Ljava/io/Reader;

    invoke-virtual {v5}, Ljava/io/Reader;->read()I

    move-result v0

    .line 672
    .local v0, c:I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_67

    move v3, v4

    .line 673
    goto :goto_59

    .line 675
    :cond_67
    iget-object v4, p0, Lcom/google/android/music/store/TagNormalizer;->zzBuffer:[C

    iget v5, p0, Lcom/google/android/music/store/TagNormalizer;->zzEndRead:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/music/store/TagNormalizer;->zzEndRead:I

    int-to-char v6, v0

    aput-char v6, v4, v5

    goto :goto_59

    .end local v0           #c:I
    :cond_73
    move v3, v4

    .line 681
    goto :goto_59
.end method

.method private zzScanError(I)V
    .registers 6
    .parameter "errorCode"

    .prologue
    .line 786
    :try_start_0
    sget-object v2, Lcom/google/android/music/store/TagNormalizer;->ZZ_ERROR_MSG:[Ljava/lang/String;

    aget-object v1, v2, p1
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_a

    .line 792
    .local v1, message:Ljava/lang/String;
    :goto_4
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 788
    .end local v1           #message:Ljava/lang/String;
    :catch_a
    move-exception v0

    .line 789
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v2, Lcom/google/android/music/store/TagNormalizer;->ZZ_ERROR_MSG:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .restart local v1       #message:Ljava/lang/String;
    goto :goto_4
.end method

.method private static zzUnpackAction(Ljava/lang/String;I[I)I
    .registers 10
    .parameter "packed"
    .parameter "offset"
    .parameter "result"

    .prologue
    .line 135
    const/4 v1, 0x0

    .line 136
    .local v1, i:I
    move v3, p1

    .line 137
    .local v3, j:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, l:I
    move v2, v1

    .line 138
    .end local v1           #i:I
    .local v2, i:I
    :goto_7
    if-ge v2, v5, :cond_1f

    .line 139
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 140
    .local v0, count:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 141
    .local v6, value:I
    :goto_15
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .local v4, j:I
    aput v6, p2, v3

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_20

    move v3, v4

    .line 142
    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_7

    .line 143
    .end local v0           #count:I
    .end local v6           #value:I
    :cond_1f
    return v3

    .end local v3           #j:I
    .restart local v0       #count:I
    .restart local v4       #j:I
    .restart local v6       #value:I
    :cond_20
    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_15
.end method

.method private static zzUnpackAction()[I
    .registers 3

    .prologue
    .line 128
    const/16 v2, 0x55

    new-array v1, v2, [I

    .line 129
    .local v1, result:[I
    const/4 v0, 0x0

    .line 130
    .local v0, offset:I
    const-string v2, "\u0002\u0000\u0002\u0001\u0002\u0002\u0001\u0003\u0001\u0001\u0001\u0004\u0001\u0002\u0001\u0001\u0007\u0002\u0001\u0003\u0001\u0001\u0001\u0002\u0007\u0000\u0001\u0005\u000b\u0000\u0002\u0002\u0004\u0006\u0004\u0002\u0001\u0000\u0001\u0003\u0001\u0000\u0001\u0007\u0002\u0000\u0002\u0008\u0003\u0000\u0001\t\u0001\u0002\u0004\u0000\u0001\u0003\u0006\u0000\u0001\n\u0001\u0007\u0001\u0000\u0003\u0008\u0002\u0000\u0001\u000b\u0001\u0000\u0001\n"

    invoke-static {v2, v0, v1}, Lcom/google/android/music/store/TagNormalizer;->zzUnpackAction(Ljava/lang/String;I[I)I

    move-result v0

    .line 131
    return-object v1
.end method

.method private static zzUnpackAttribute(Ljava/lang/String;I[I)I
    .registers 10
    .parameter "packed"
    .parameter "offset"
    .parameter "result"

    .prologue
    .line 343
    const/4 v1, 0x0

    .line 344
    .local v1, i:I
    move v3, p1

    .line 345
    .local v3, j:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, l:I
    move v2, v1

    .line 346
    .end local v1           #i:I
    .local v2, i:I
    :goto_7
    if-ge v2, v5, :cond_1f

    .line 347
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 348
    .local v0, count:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 349
    .local v6, value:I
    :goto_15
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .local v4, j:I
    aput v6, p2, v3

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_20

    move v3, v4

    .line 350
    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_7

    .line 351
    .end local v0           #count:I
    .end local v6           #value:I
    :cond_1f
    return v3

    .end local v3           #j:I
    .restart local v0       #count:I
    .restart local v4       #j:I
    .restart local v6       #value:I
    :cond_20
    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_15
.end method

.method private static zzUnpackAttribute()[I
    .registers 3

    .prologue
    .line 336
    const/16 v2, 0x55

    new-array v1, v2, [I

    .line 337
    .local v1, result:[I
    const/4 v0, 0x0

    .line 338
    .local v0, offset:I
    const-string v2, "\u0002\u0000\u0001\t\u0012\u0001\u0007\u0000\u0001\u0001\u000b\u0000\u0002\u0001\u0001\t\u0007\u0001\u0001\u0000\u0001\t\u0001\u0000\u0001\u0001\u0002\u0000\u0002\u0001\u0003\u0000\u0002\u0001\u0004\u0000\u0001\u0001\u0006\u0000\u0002\u0001\u0001\u0000\u0001\t\u0002\u0001\u0002\u0000\u0001\u0001\u0001\u0000\u0001\u0001"

    invoke-static {v2, v0, v1}, Lcom/google/android/music/store/TagNormalizer;->zzUnpackAttribute(Ljava/lang/String;I[I)I

    move-result v0

    .line 339
    return-object v1
.end method

.method private static zzUnpackCMap(Ljava/lang/String;)[C
    .registers 9
    .parameter "packed"

    .prologue
    .line 619
    const/high16 v7, 0x1

    new-array v5, v7, [C

    .line 620
    .local v5, map:[C
    const/4 v1, 0x0

    .line 621
    .local v1, i:I
    const/4 v3, 0x0

    .local v3, j:I
    move v2, v1

    .line 622
    .end local v1           #i:I
    .local v2, i:I
    :goto_7
    const/16 v7, 0x4e8

    if-ge v2, v7, :cond_21

    .line 623
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 624
    .local v0, count:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 625
    .local v6, value:C
    :goto_17
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .local v4, j:I
    aput-char v6, v5, v3

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_22

    move v3, v4

    .line 626
    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_7

    .line 627
    .end local v0           #count:I
    .end local v6           #value:C
    :cond_21
    return-object v5

    .end local v3           #j:I
    .restart local v0       #count:I
    .restart local v4       #j:I
    .restart local v6       #value:C
    :cond_22
    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_17
.end method

.method private static zzUnpackRowMap(Ljava/lang/String;I[I)I
    .registers 10
    .parameter "packed"
    .parameter "offset"
    .parameter "result"

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 174
    .local v1, i:I
    move v3, p1

    .line 175
    .local v3, j:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, l:I
    move v4, v3

    .end local v3           #j:I
    .local v4, j:I
    move v2, v1

    .line 176
    .end local v1           #i:I
    .local v2, i:I
    :goto_8
    if-ge v2, v5, :cond_1f

    .line 177
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    shl-int/lit8 v0, v6, 0x10

    .line 178
    .local v0, high:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    or-int/2addr v6, v0

    aput v6, p2, v4

    move v4, v3

    .line 179
    .end local v3           #j:I
    .restart local v4       #j:I
    goto :goto_8

    .line 180
    .end local v0           #high:I
    :cond_1f
    return v4
.end method

.method private static zzUnpackRowMap()[I
    .registers 3

    .prologue
    .line 166
    const/16 v2, 0x55

    new-array v1, v2, [I

    .line 167
    .local v1, result:[I
    const/4 v0, 0x0

    .line 168
    .local v0, offset:I
    const-string v2, "\u0000\u0000\u0000\u001d\u0000:\u0000W\u0000t\u0000\u0091\u0000W\u0000\u00ae\u0000\u00cb\u0000\u00e8\u0000\u0105\u0000\u0122\u0000\u013f\u0000\u015c\u0000\u0179\u0000\u0196\u0000\u01b3\u0000\u01d0\u0000\u0105\u0000\u01ed\u0000\u020a\u0000\u0227\u0000\u0244\u0000\u0261\u0000\u027e\u0000\u029b\u0000\u02b8\u0000\u02d5\u0000\u02f2\u0000\u030f\u0000\u032c\u0000\u0349\u0000\u0366\u0000\u0383\u0000\u03a0\u0000\u03bd\u0000\u03da\u0000\u03f7\u0000\u0414\u0000\u0431\u0000\u044e\u0000\u046b\u0000:\u0000\u0431\u0000\u029b\u0000\u02b8\u0000\u0488\u0000\u04a5\u0000\u04c2\u0000\u04df\u0000\u04fc\u0000:\u0000\u0519\u0000\u0536\u0000\u0553\u0000\u0570\u0000\u058d\u0000\u05aa\u0000\u05c7\u0000\u05e4\u0000\u0601\u0000\u02d5\u0000\u061e\u0000\u063b\u0000\u0658\u0000\u0675\u0000\u0692\u0000\u0431\u0000\u06af\u0000\u06cc\u0000\u06e9\u0000\u0706\u0000\u0723\u0000\u0740\u0000\u075d\u0000\u027e\u0000\u077a\u0000:\u0000\u0797\u0000\u077a\u0000\u07b4\u0000\u0797\u0000\u0091\u0000\u07d1\u0000\u0431"

    invoke-static {v2, v0, v1}, Lcom/google/android/music/store/TagNormalizer;->zzUnpackRowMap(Ljava/lang/String;I[I)I

    move-result v0

    .line 169
    return-object v1
.end method

.method private static zzUnpackTrans(Ljava/lang/String;I[I)I
    .registers 10
    .parameter "packed"
    .parameter "offset"
    .parameter "result"

    .prologue
    .line 299
    const/4 v1, 0x0

    .line 300
    .local v1, i:I
    move v3, p1

    .line 301
    .local v3, j:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, l:I
    move v2, v1

    .line 302
    .end local v1           #i:I
    .local v2, i:I
    :goto_7
    if-ge v2, v5, :cond_21

    .line 303
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 304
    .local v0, count:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 305
    .local v6, value:I
    add-int/lit8 v6, v6, -0x1

    .line 306
    :goto_17
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .local v4, j:I
    aput v6, p2, v3

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_22

    move v3, v4

    .line 307
    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_7

    .line 308
    .end local v0           #count:I
    .end local v6           #value:I
    :cond_21
    return v3

    .end local v3           #j:I
    .restart local v0       #count:I
    .restart local v4       #j:I
    .restart local v6       #value:I
    :cond_22
    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_17
.end method

.method private static zzUnpackTrans()[I
    .registers 3

    .prologue
    .line 292
    const/16 v2, 0x7ee

    new-array v1, v2, [I

    .line 293
    .local v1, result:[I
    const/4 v0, 0x0

    .line 294
    .local v0, offset:I
    const-string v2, "\u0001\u0003\u0002\u0004\u0001\u0005\u0001\u0004\u0001\u0006\u0001\u0004\u000c\u0005\u0001\u0007\u0001\u0005\u0002\u0004\u0001\u0000\u0001\u0008\u0001\t\u0001\n\u0001\u0004\u0001\u0005\u0001\u0003\u0002\u000b\u0001\u000c\u0001\u000b\u0001\u0006\u0001\u000b\u0001\r\u0001\u000c\u0001\u000e\u0001\u000f\u0001\u000c\u0001\u0010\u0001\u000c\u0001\u0011\u0001\u0012\u0003\u000c\u0001\u0013\u0001\u000c\u0002\u000b\u0001\u0000\u0001\u0014\u0001\t\u0001\u0015\u0001\u000b\u0001\u000c&\u0000\u0001\u0016\u0001\u0017\u0003\u0000\u0001\u0017\u0005\u0000\u0001\u0018\u000b\u0000\u0001\u0006\u0001\u0019\u0001\u0006\u0001\u001a\u000c\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0003\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u001a\u000c\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0002\u0000\u0001\u001c\u0006\u0000\u0001\u0016\u0001\u0017\u0003\u0000\u0001\u0017\u0005\u0000\u0001\u0018\u0001\u0000\u0001\u001c\u0002\u0000\u0001\u001d\u0006\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u001a\u000c\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0001\t\u0001\u0006\u0001\u001a\u0001\u0006\u0003\u0000\u0001\u0006\u0001\u0019\u0001\u0006\u0001\u001a\u000c\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001e\u0001\u0006\u0001\u0000\u0002\u001f\u0001 \u0001\u001f\u0001\u0000\u0001\u001f\u0001!\u0001 \u0001\"\u0001#\u0001 \u0001$\u0001 \u0001%\u0001&\u0003 \u0001\u001f\u0001\'\u0002\u001f\u0001\u0000\u0001\u001f\u0001\u0000\u0001 \u0001\u001f\u0001 \u0003\u0000\u0001\u0006\u0001(\u0001\u0006\u0001\u001a\u000c\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0003\u0000\u0001\u0006\u0001(\u0001\u0006\u0001\u001a\u0001\u0006\u0001)\n\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0003\u0000\u0001\u0006\u0001(\u0001\u0006\u0001\u001a\u0005\u0006\u0001*\u0006\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0001\u0000\u0002+\u0001\u0006\u0001,\u0001\u0006\u0001-\u0004\u0006\u0001*\u0007\u0006\u0001+\u0001\u0006\u0001.\u0001+\u0001\u0000\u0001-\u0002\u0006\u0001-\u0001\u0006\u0001\u0000\u0002+\u0001\u0006\u0001,\u0001\u0006\u0001-\u0002\u0006\u0002/\u0006\u0006\u0001*\u0001/\u0001+\u0001\u0006\u0001.\u0001+\u0001\u0000\u0001-\u0002\u0006\u0001-\u0001\u0006\u0003\u0000\u0001\u0006\u0001(\u0001\u0006\u0001\u001a\u0004\u0006\u00010\u0007\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0003\u0000\u0001\u0006\u0001(\u0001\u0006\u0001\u001a\u0002\u0006\u00011\u00012\u0006\u0006\u0001)\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0001\u0000\u0001\u001f\u00013\u0001 \u0001\u001f\u0001\u0000\u0001\u001f\u0001!\u0001 \u0001\"\u0001#\u0001 \u0001$\u0001 \u0001%\u0001&\u0003 \u0001\u001f\u0001\'\u0001\u001f\u00013\u0001\u0000\u0001\u001f\u0001\u001d\u0001 \u0001\u001f\u0001 \u0003\u0000\u0001\u0006\u0001(\u0001\u0006\u0001\u001a\u000c\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001e\u0001\u0006\u0001\u0000\u00024\u0001\u0000\u00014\u0001\u0000\u00014\u0001\u0018\u000b\u0000\u00014\u0001\u0000\u00024\u0001\u0000\u00014\u0002\u0000\u00014\u000c\u0000\u00015\u0012\u0000\u00024\u0001\u0000\u00014\u0001\u0000\u00014\u000c\u0000\u00014\u0001\u0000\u00024\u0001\u0000\u00014\u0002\u0000\u00014\u0004\u0000\u00016\u0003\u0000\u000c6\u0001\u0000\u00016\u0005\u0000\u00016\u0001\u0000\u00016\u0003\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u001a\u000c\u0006\u0001\u0000\u0001\u0006\u0003\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0007\u0000\u00017\u0001\u0000\u00018\u00019\u0001\u0000\u0001:\u0001\u0000\u0001;\u0001<\u0006\u0000\u0001=\u001f\u0000\u0001>\u001c\u0000\u0001\u001d\u0006\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u001a\u0004\u0006\u0001?\u0007\u0006\u0001\u0000\u0001\u0006\u0003\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0001\u0000\u0002\u001f\u0001 \u0001\u001f\u0001\u0000\u0001\u001f\u0001!\u0001 \u0001@\u0001A\u0001 \u0001$\u0001 \u0001B\u0001&\u0003 \u0001\u001f\u0001 \u0002\u001f\u0001\u0000\u0001\u001f\u0001\u0000\u0001 \u0001\u001f\u0001 \u0004\u0000\u0001(\u001c\u0000\u0001(\u0003\u0000\u0001C\u0015\u0000\u00024\u0001\u0000\u0001D\u0001\u0000\u00014\u0001\u0018\u0004\u0000\u0001E\u0006\u0000\u00014\u0001\u0000\u00024\u0001\u0000\u00014\u0002\u0000\u00014\u0002\u0000\u0002+\u0001\u0000\u0001,\u0001\u0000\u0001+\u0004\u0000\u0001F\u0007\u0000\u0001+\u0001\u0000\u0002+\u0001\u0000\u0001+\u0002\u0000\u0001+\u0002\u0000\u0002+\u0001\u0000\u0001,\u0001\u0000\u0001+\u0002\u0000\u0002G\u0006\u0000\u0001E\u0001G\u0001+\u0001\u0000\u0002+\u0001\u0000\u0001+\u0002\u0000\u0001+\u0005\u0000\u0001(\u0006\u0000\u0001H\u0015\u0000\u0001(\u0004\u0000\u0001I\u0001J\u0006\u0000\u0001C\u000c\u0000\u00024\u0001\u0000\u0001D\u0001\u0000\u00014\u000c\u0000\u00014\u0001\u0000\u00024\u0001\u0000\u00014\u0002\u0000\u00014\u0004\u0000\u0001K\u0003\u0000\u000cK\u0001\u0000\u0001K\u0005\u0000\u0001K\u0001\u0000\u0001K\u0003\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u001a\u0002\u0006\u0001*\t\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0001\u0000\u0002+\u0001\u0006\u0001+\u0001\u0006\u0001-\u000c\u0006\u0001+\u0001\u0006\u0001.\u0001+\u0001\u0000\u0001-\u0002\u0006\u0001-\u0001\u0006\u0001\u0000\u0002+\u0001\u0006\u0001+\u0001\u0006\u0001-\u0006\u0006\u0001*\u0005\u0006\u0001+\u0001\u0006\u0001.\u0001+\u0001\u0000\u0001-\u0002\u0006\u0001-\u0001\u0006\u0001\u0000\u0002+\u0001\u0006\u0001+\u0001\u0006\u0001-\u0002\u0006\u0001*\t\u0006\u0001+\u0001\u0006\u0001.\u0001+\u0001\u0000\u0001-\u0002\u0006\u0001-\u0001\u0006\u0003\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u001a\u0004\u0006\u0001*\u0001\u0006\u0001*\u0002\u0006\u0001*\u0002\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0003\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u001a\u0006\u0006\u0001*\u0005\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001\u0006\u0001\u0000\u0002\u001f\u0001 \u0001\u001f\u0001\u0000\u0001\u001f\u0001!\u0001 \u0001@\u0001A\u0001 \u0001$\u0001 \u0001B\u0001&\u0003 \u0001\u001f\u0001 \u0002\u001f\u0001\u0000\u0001\u001f\u0001>\u0001 \u0001\u001f\u0001 \u000f\u0000\u0001\u0018\u0011\u0000\u0001L \u0000\u0001M \u0000\u0001N\u001b\u0000\u0001N\u001a\u0000\u0002O\u0006\u0000\u0001N\u0001O\u0015\u0000\u0001P\u001a\u0000\u0001Q\u0001R\u0006\u0000\u0001M\u0012\u0000\u00017\u0001\u0000\u00018\u00019\u0001\u0000\u0001:\u0001\u0000\u0001;\u0001<\u0010\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u001a\u000c\u0006\u0001\u0000\u0001\u0006\u0001\u001b\u0002\u0000\u0001\u001a\u0002\u0006\u0001\u001a\u0001S\u0004\u0000\u0001(\u0007\u0000\u0001E\u0011\u0000\u0002+\u0001\u0000\u0001,\u0001\u0000\u0001+\u0004\u0000\u0001E\u0007\u0000\u0001+\u0001\u0000\u0002+\u0001\u0000\u0001+\u0002\u0000\u0001+\u0005\u0000\u0001(\u0006\u0000\u0001T\u001a\u0000\u0001E\u0014\u0000\u0002+\u0001\u0000\u0001+\u0001\u0000\u0001+\u000c\u0000\u0001+\u0001\u0000\u0002+\u0001\u0000\u0001+\u0002\u0000\u0001+\u0002\u0000\u0002+\u0001\u0000\u0001+\u0001\u0000\u0001+\u0008\u0000\u0001\u0018\u0003\u0000\u0001+\u0001\u0000\u0002+\u0001\u0000\u0001+\u0002\u0000\u0001+\u0002\u0000\u0002+\u0001\u0000\u0001+\u0001\u0000\u0001+\u0006\u0000\u0001E\u0005\u0000\u0001+\u0001\u0000\u0002+\u0001\u0000\u0001+\u0002\u0000\u0001+\u0002\u0000\u0002+\u0001\u0000\u0001+\u0001\u0000\u0001+\u0002\u0000\u0001E\u0005\u0000\u0001\u0018\u0003\u0000\u0001+\u0001\u0000\u0002+\u0001\u0000\u0001+\u0002\u0000\u0001+\u000c\u0000\u0001E\u0001\u0000\u0001E\u0002\u0000\u0001E\u0019\u0000\u0001E\u0013\u0000\u0001U!\u0000\u0001N \u0000\u0001N\u001a\u0000\u0001N\u0001\u0000\u0001N\u0002\u0000\u0001N\r\u0000\u0002+\u0001\u0000\u0001+\u0001\u0000\u0001+\u0002\u0000\u0001E\t\u0000\u0001+\u0001\u0000\u0002+\u0001\u0000\u0001+\u0002\u0000\u0001+\u0001\u0000"

    invoke-static {v2, v0, v1}, Lcom/google/android/music/store/TagNormalizer;->zzUnpackTrans(Ljava/lang/String;I[I)I

    move-result v0

    .line 295
    return-object v1
.end method


# virtual methods
.method public normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "stringToNormalize"

    .prologue
    .line 487
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_b

    .line 488
    :cond_8
    const-string v6, ""

    .line 519
    :goto_a
    return-object v6

    .line 495
    :cond_b
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 496
    .local v0, chars:[C
    array-length v4, v0

    .line 497
    .local v4, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v4, :cond_2d

    .line 498
    aget-char v6, v0, v2

    const v7, 0xffff

    and-int v3, v6, v7

    .line 499
    .local v3, index:I
    const/16 v6, 0x100

    if-ge v3, v6, :cond_2a

    .line 500
    sget-object v6, Lcom/google/android/music/store/TagNormalizer;->TO_LOWER_LATIN:[C

    aget-char v6, v6, v3

    aput-char v6, v0, v2

    .line 497
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 504
    .end local v3           #index:I
    :cond_2d
    :try_start_2d
    invoke-direct {p0}, Lcom/google/android/music/store/TagNormalizer;->yyclose()V

    .line 505
    iget-object v6, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 506
    new-instance v6, Ljava/io/CharArrayReader;

    invoke-direct {v6, v0}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-direct {p0, v6}, Lcom/google/android/music/store/TagNormalizer;->yyreset(Ljava/io/Reader;)V

    .line 508
    :goto_3e
    iget-boolean v6, p0, Lcom/google/android/music/store/TagNormalizer;->zzAtEOF:Z

    if-nez v6, :cond_4d

    .line 509
    invoke-direct {p0}, Lcom/google/android/music/store/TagNormalizer;->yylex()I
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_45} :catch_46

    goto :goto_3e

    .line 521
    :catch_46
    move-exception v1

    .line 522
    .local v1, e:Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 512
    .end local v1           #e:Ljava/io/IOException;
    :cond_4d
    :try_start_4d
    iget-object v6, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    .line 513
    .local v5, resultLength:I
    const/4 v6, 0x2

    if-ge v5, v6, :cond_63

    .line 514
    iget-object v6, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 519
    :goto_5c
    iget-object v6, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_a

    .line 517
    :cond_63
    iget-object v6, p0, Lcom/google/android/music/store/TagNormalizer;->mResult:Ljava/lang/StringBuffer;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_6a} :catch_46

    goto :goto_5c
.end method

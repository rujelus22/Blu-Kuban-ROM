.class public LTQ;
.super Ljava/lang/Object;
.source "FeedProcessorDriverImpl.java"

# interfaces
.implements LTM;


# static fields
.field private static a:I

.field private static final a:LTX;

.field static final synthetic a:Z


# instance fields
.field private final a:LTO;

.field private final a:LTS;

.field private final a:Ljava/lang/String;

.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LTN;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "LUa;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/regex/Pattern;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LTW;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, LTQ;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, LTQ;->a:Z

    .line 61
    const/4 v0, 0x3

    sput v0, LTQ;->a:I

    .line 67
    new-instance v0, LTR;

    invoke-direct {v0}, LTR;-><init>()V

    sput-object v0, LTQ;->a:LTX;

    return-void

    .line 42
    :cond_16
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(LTO;LTS;LFX;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    sget v1, LTQ;->a:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, LTQ;->a:Ljava/util/concurrent/BlockingQueue;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LTQ;->a:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LTQ;->b:Ljava/util/ArrayList;

    .line 88
    iput-object p1, p0, LTQ;->a:LTO;

    .line 89
    iput-object p2, p0, LTQ;->a:LTS;

    .line 90
    const-string v0, "feedUriRewritePattern"

    const-string v1, "^https?://(docs.google.com/feeds/).*$"

    invoke-interface {p3, v0, v1}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, LTQ;->a:Ljava/util/regex/Pattern;

    .line 93
    const-string v0, "feedUriRewriteReplacement"

    const-string v1, "clients3.google.com/feeds/"

    invoke-interface {p3, v0, v1}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LTQ;->a:Ljava/lang/String;

    .line 96
    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    .line 241
    iget-object v0, p0, LTQ;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTW;

    .line 242
    invoke-interface {v0}, LTW;->interrupt()V

    goto :goto_6

    .line 246
    :cond_16
    iget-object v0, p0, LTQ;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTW;

    .line 248
    :try_start_28
    invoke-interface {v0}, LTW;->b()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_1c

    .line 249
    :catch_2c
    move-exception v2

    .line 250
    invoke-interface {v0}, LTW;->a()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 251
    const-string v0, "FeedProcessorDriver"

    const-string v2, "Producer not cleaned up correctly"

    invoke-static {v0, v2}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 265
    :cond_3b
    :try_start_3b
    invoke-virtual {v0}, LUa;->a()V

    .line 258
    :cond_3e
    iget-object v0, p0, LTQ;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_54

    .line 260
    iget-object v0, p0, LTQ;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUa;

    .line 262
    invoke-virtual {v0}, LUa;->a()Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_51} :catch_55

    move-result v1

    if-nez v1, :cond_3b

    .line 272
    :cond_54
    :goto_54
    return-void

    .line 267
    :catch_55
    move-exception v0

    .line 268
    iget-object v0, p0, LTQ;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_54

    .line 269
    const-string v0, "FeedProcessorDriver"

    const-string v1, "Producer not cleaned up correctly"

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 111
    iget-object v0, p0, LTQ;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    const/4 v2, 0x0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v2, p0, LTQ;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 119
    :cond_32
    return-object p1
.end method

.method public a(Landroid/content/SyncResult;)V
    .registers 15
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v10, 0x1

    .line 143
    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 148
    :try_start_8
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 149
    iget-object v0, p0, LTQ;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_217

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTN;

    .line 150
    invoke-interface {v0}, LTN;->a()V

    .line 151
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_61
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_26} :catch_27
    .catch Lasb; {:try_start_8 .. :try_end_26} :catch_51
    .catch Lasd; {:try_start_8 .. :try_end_26} :catch_fe
    .catch LarZ; {:try_start_8 .. :try_end_26} :catch_178
    .catch LarN; {:try_start_8 .. :try_end_26} :catch_181
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_26} :catch_191
    .catch Lasn; {:try_start_8 .. :try_end_26} :catch_19a
    .catch LarL; {:try_start_8 .. :try_end_26} :catch_1a8
    .catch Landroid/accounts/AuthenticatorException; {:try_start_8 .. :try_end_26} :catch_1b1
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_26} :catch_1ba
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_26} :catch_1ca
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_26} :catch_1d3

    goto :goto_13

    .line 193
    :catch_27
    move-exception v0

    move-object v1, v2

    .line 194
    :goto_29
    const/4 v2, 0x1

    :try_start_2a
    iput-boolean v2, p1, Landroid/content/SyncResult;->databaseError:Z

    .line 197
    new-instance v2, LFx;

    const-string v3, "Database corrupted"

    invoke-direct {v2, v3, v0}, LFx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_34

    .line 232
    :catchall_34
    move-exception v0

    move-object v2, v1

    :goto_36
    if-eqz v2, :cond_3b

    .line 233
    invoke-virtual {v2}, LUa;->a()V

    .line 235
    :cond_3b
    invoke-direct {p0}, LTQ;->a()V

    throw v0

    .line 181
    :cond_3f
    :try_start_3f
    invoke-virtual {v0}, LUa;->a()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_1e3
    .catch Landroid/database/SQLException; {:try_start_3f .. :try_end_42} :catch_140
    .catch Lasb; {:try_start_3f .. :try_end_42} :catch_212
    .catch Lasd; {:try_start_3f .. :try_end_42} :catch_20d
    .catch LarZ; {:try_start_3f .. :try_end_42} :catch_208
    .catch LarN; {:try_start_3f .. :try_end_42} :catch_203
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_1ff
    .catch Lasn; {:try_start_3f .. :try_end_42} :catch_1fc
    .catch LarL; {:try_start_3f .. :try_end_42} :catch_1f8
    .catch Landroid/accounts/AuthenticatorException; {:try_start_3f .. :try_end_42} :catch_1f4
    .catch Ljava/text/ParseException; {:try_start_3f .. :try_end_42} :catch_1f0
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_42} :catch_1ec
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_1e8

    move v4, v1

    .line 154
    :goto_43
    :try_start_43
    invoke-static {}, Lcg;->b()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 155
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "Interrupted during processing"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_51
    .catchall {:try_start_43 .. :try_end_51} :catchall_61
    .catch Landroid/database/SQLException; {:try_start_43 .. :try_end_51} :catch_27
    .catch Lasb; {:try_start_43 .. :try_end_51} :catch_51
    .catch Lasd; {:try_start_43 .. :try_end_51} :catch_fe
    .catch LarZ; {:try_start_43 .. :try_end_51} :catch_178
    .catch LarN; {:try_start_43 .. :try_end_51} :catch_181
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_51} :catch_191
    .catch Lasn; {:try_start_43 .. :try_end_51} :catch_19a
    .catch LarL; {:try_start_43 .. :try_end_51} :catch_1a8
    .catch Landroid/accounts/AuthenticatorException; {:try_start_43 .. :try_end_51} :catch_1b1
    .catch Ljava/text/ParseException; {:try_start_43 .. :try_end_51} :catch_1ba
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_51} :catch_1ca
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_51} :catch_1d3

    .line 198
    :catch_51
    move-exception v0

    .line 199
    :goto_52
    :try_start_52
    iget-object v1, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v1, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v3, v10

    iput-wide v3, v1, Landroid/content/SyncStats;->numParseExceptions:J

    .line 200
    new-instance v1, LFx;

    const-string v3, "Error getting feed data"

    invoke-direct {v1, v3, v0}, LFx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_61
    .catchall {:try_start_52 .. :try_end_61} :catchall_61

    .line 232
    :catchall_61
    move-exception v0

    goto :goto_36

    .line 158
    :cond_63
    :try_start_63
    iget-object v0, p0, LTQ;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUa;
    :try_end_6b
    .catchall {:try_start_63 .. :try_end_6b} :catchall_61
    .catch Landroid/database/SQLException; {:try_start_63 .. :try_end_6b} :catch_27
    .catch Lasb; {:try_start_63 .. :try_end_6b} :catch_51
    .catch Lasd; {:try_start_63 .. :try_end_6b} :catch_fe
    .catch LarZ; {:try_start_63 .. :try_end_6b} :catch_178
    .catch LarN; {:try_start_63 .. :try_end_6b} :catch_181
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_6b} :catch_191
    .catch Lasn; {:try_start_63 .. :try_end_6b} :catch_19a
    .catch LarL; {:try_start_63 .. :try_end_6b} :catch_1a8
    .catch Landroid/accounts/AuthenticatorException; {:try_start_63 .. :try_end_6b} :catch_1b1
    .catch Ljava/text/ParseException; {:try_start_63 .. :try_end_6b} :catch_1ba
    .catch Ljava/lang/InterruptedException; {:try_start_63 .. :try_end_6b} :catch_1ca
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6b} :catch_1d3

    .line 160
    :try_start_6b
    const-string v1, "FeedProcessorDriver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Item "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {v0}, LUa;->a()Z

    move-result v1

    if-nez v1, :cond_d6

    .line 164
    add-int/lit8 v1, v4, 0x1

    .line 165
    invoke-virtual {v0}, LUa;->a()I

    move-result v4

    invoke-virtual {v0}, LUa;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v4, "FeedProcessorDriver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " producers done"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v4, p0, LTQ;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_b3
    .catchall {:try_start_6b .. :try_end_b3} :catchall_f9

    move-result v4

    if-ne v1, v4, :cond_3f

    .line 181
    :try_start_b6
    invoke-virtual {v0}, LUa;->a()V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_1e3
    .catch Landroid/database/SQLException; {:try_start_b6 .. :try_end_b9} :catch_140
    .catch Lasb; {:try_start_b6 .. :try_end_b9} :catch_212
    .catch Lasd; {:try_start_b6 .. :try_end_b9} :catch_20d
    .catch LarZ; {:try_start_b6 .. :try_end_b9} :catch_208
    .catch LarN; {:try_start_b6 .. :try_end_b9} :catch_203
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_1ff
    .catch Lasn; {:try_start_b6 .. :try_end_b9} :catch_1fc
    .catch LarL; {:try_start_b6 .. :try_end_b9} :catch_1f8
    .catch Landroid/accounts/AuthenticatorException; {:try_start_b6 .. :try_end_b9} :catch_1f4
    .catch Ljava/text/ParseException; {:try_start_b6 .. :try_end_b9} :catch_1f0
    .catch Ljava/lang/InterruptedException; {:try_start_b6 .. :try_end_b9} :catch_1ec
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b9} :catch_1e8

    .line 186
    :goto_b9
    :try_start_b9
    iget-object v0, p0, LTQ;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_146

    .line 187
    iget-object v0, p0, LTQ;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTN;

    .line 188
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, LTN;->a(Ljava/lang/String;)V
    :try_end_d2
    .catchall {:try_start_b9 .. :try_end_d2} :catchall_61
    .catch Landroid/database/SQLException; {:try_start_b9 .. :try_end_d2} :catch_27
    .catch Lasb; {:try_start_b9 .. :try_end_d2} :catch_51
    .catch Lasd; {:try_start_b9 .. :try_end_d2} :catch_fe
    .catch LarZ; {:try_start_b9 .. :try_end_d2} :catch_178
    .catch LarN; {:try_start_b9 .. :try_end_d2} :catch_181
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_d2} :catch_191
    .catch Lasn; {:try_start_b9 .. :try_end_d2} :catch_19a
    .catch LarL; {:try_start_b9 .. :try_end_d2} :catch_1a8
    .catch Landroid/accounts/AuthenticatorException; {:try_start_b9 .. :try_end_d2} :catch_1b1
    .catch Ljava/text/ParseException; {:try_start_b9 .. :try_end_d2} :catch_1ba
    .catch Ljava/lang/InterruptedException; {:try_start_b9 .. :try_end_d2} :catch_1ca
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_d2} :catch_1d3

    .line 186
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_b9

    .line 173
    :cond_d6
    :try_start_d6
    invoke-static {}, Lcg;->b()Z

    move-result v1

    if-eqz v1, :cond_10e

    .line 174
    new-instance v1, Ljava/lang/InterruptedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interrupted while processing #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, LUa;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_f9
    .catchall {:try_start_d6 .. :try_end_f9} :catchall_f9

    .line 181
    :catchall_f9
    move-exception v1

    :try_start_fa
    invoke-virtual {v0}, LUa;->a()V
    :try_end_fd
    .catchall {:try_start_fa .. :try_end_fd} :catchall_1e3
    .catch Landroid/database/SQLException; {:try_start_fa .. :try_end_fd} :catch_140
    .catch Lasb; {:try_start_fa .. :try_end_fd} :catch_212
    .catch Lasd; {:try_start_fa .. :try_end_fd} :catch_20d
    .catch LarZ; {:try_start_fa .. :try_end_fd} :catch_208
    .catch LarN; {:try_start_fa .. :try_end_fd} :catch_203
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_fd} :catch_1ff
    .catch Lasn; {:try_start_fa .. :try_end_fd} :catch_1fc
    .catch LarL; {:try_start_fa .. :try_end_fd} :catch_1f8
    .catch Landroid/accounts/AuthenticatorException; {:try_start_fa .. :try_end_fd} :catch_1f4
    .catch Ljava/text/ParseException; {:try_start_fa .. :try_end_fd} :catch_1f0
    .catch Ljava/lang/InterruptedException; {:try_start_fa .. :try_end_fd} :catch_1ec
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_fd} :catch_1e8

    .line 182
    :try_start_fd
    throw v1
    :try_end_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_61
    .catch Landroid/database/SQLException; {:try_start_fd .. :try_end_fe} :catch_27
    .catch Lasb; {:try_start_fd .. :try_end_fe} :catch_51
    .catch Lasd; {:try_start_fd .. :try_end_fe} :catch_fe
    .catch LarZ; {:try_start_fd .. :try_end_fe} :catch_178
    .catch LarN; {:try_start_fd .. :try_end_fe} :catch_181
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_fe} :catch_191
    .catch Lasn; {:try_start_fd .. :try_end_fe} :catch_19a
    .catch LarL; {:try_start_fd .. :try_end_fe} :catch_1a8
    .catch Landroid/accounts/AuthenticatorException; {:try_start_fd .. :try_end_fe} :catch_1b1
    .catch Ljava/text/ParseException; {:try_start_fd .. :try_end_fe} :catch_1ba
    .catch Ljava/lang/InterruptedException; {:try_start_fd .. :try_end_fe} :catch_1ca
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_fe} :catch_1d3

    .line 201
    :catch_fe
    move-exception v0

    .line 202
    :goto_ff
    :try_start_ff
    iget-object v1, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v1, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v3, v10

    iput-wide v3, v1, Landroid/content/SyncStats;->numParseExceptions:J

    .line 203
    new-instance v1, LFx;

    const-string v3, "Error getting feed data"

    invoke-direct {v1, v3, v0}, LFx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_10e
    .catchall {:try_start_ff .. :try_end_10e} :catchall_61

    .line 177
    :cond_10e
    :try_start_10e
    sget-boolean v1, LTQ;->a:Z

    if-nez v1, :cond_12a

    invoke-virtual {v0}, LUa;->a()I

    move-result v1

    if-ltz v1, :cond_124

    invoke-virtual {v0}, LUa;->a()I

    move-result v1

    iget-object v8, p0, LTQ;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v1, v8, :cond_12a

    :cond_124
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 178
    :cond_12a
    iget-object v1, p0, LTQ;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, LUa;->a()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LTN;

    .line 179
    iget-object v8, p0, LTQ;->a:LTS;

    invoke-interface {v8, p1, v0, v1}, LTS;->a(Landroid/content/SyncResult;LUa;LTN;)V
    :try_end_13b
    .catchall {:try_start_10e .. :try_end_13b} :catchall_f9

    .line 181
    :try_start_13b
    invoke-virtual {v0}, LUa;->a()V
    :try_end_13e
    .catchall {:try_start_13b .. :try_end_13e} :catchall_1e3
    .catch Landroid/database/SQLException; {:try_start_13b .. :try_end_13e} :catch_140
    .catch Lasb; {:try_start_13b .. :try_end_13e} :catch_212
    .catch Lasd; {:try_start_13b .. :try_end_13e} :catch_20d
    .catch LarZ; {:try_start_13b .. :try_end_13e} :catch_208
    .catch LarN; {:try_start_13b .. :try_end_13e} :catch_203
    .catch Ljava/io/IOException; {:try_start_13b .. :try_end_13e} :catch_1ff
    .catch Lasn; {:try_start_13b .. :try_end_13e} :catch_1fc
    .catch LarL; {:try_start_13b .. :try_end_13e} :catch_1f8
    .catch Landroid/accounts/AuthenticatorException; {:try_start_13b .. :try_end_13e} :catch_1f4
    .catch Ljava/text/ParseException; {:try_start_13b .. :try_end_13e} :catch_1f0
    .catch Ljava/lang/InterruptedException; {:try_start_13b .. :try_end_13e} :catch_1ec
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_13e} :catch_1e8

    goto/16 :goto_43

    .line 193
    :catch_140
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_29

    .line 191
    :cond_146
    :try_start_146
    const-string v0, "FeedProcessorDriver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncResult so far in feed "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " time taken:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16f
    .catchall {:try_start_146 .. :try_end_16f} :catchall_61
    .catch Landroid/database/SQLException; {:try_start_146 .. :try_end_16f} :catch_27
    .catch Lasb; {:try_start_146 .. :try_end_16f} :catch_51
    .catch Lasd; {:try_start_146 .. :try_end_16f} :catch_fe
    .catch LarZ; {:try_start_146 .. :try_end_16f} :catch_178
    .catch LarN; {:try_start_146 .. :try_end_16f} :catch_181
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_16f} :catch_191
    .catch Lasn; {:try_start_146 .. :try_end_16f} :catch_19a
    .catch LarL; {:try_start_146 .. :try_end_16f} :catch_1a8
    .catch Landroid/accounts/AuthenticatorException; {:try_start_146 .. :try_end_16f} :catch_1b1
    .catch Ljava/text/ParseException; {:try_start_146 .. :try_end_16f} :catch_1ba
    .catch Ljava/lang/InterruptedException; {:try_start_146 .. :try_end_16f} :catch_1ca
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_16f} :catch_1d3

    .line 232
    if-eqz v2, :cond_174

    .line 233
    invoke-virtual {v2}, LUa;->a()V

    .line 235
    :cond_174
    invoke-direct {p0}, LTQ;->a()V

    .line 237
    return-void

    .line 204
    :catch_178
    move-exception v0

    .line 205
    :goto_179
    :try_start_179
    iget-object v1, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v1, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v3, v10

    iput-wide v3, v1, Landroid/content/SyncStats;->numIoExceptions:J

    .line 206
    throw v0

    .line 207
    :catch_181
    move-exception v0

    .line 208
    :goto_182
    iget-object v1, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v3, v10

    iput-wide v3, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 209
    new-instance v1, LFx;

    const-string v3, "Error getting feed data"

    invoke-direct {v1, v3, v0}, LFx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 210
    :catch_191
    move-exception v0

    .line 211
    :goto_192
    iget-object v1, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v1, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v3, v10

    iput-wide v3, v1, Landroid/content/SyncStats;->numIoExceptions:J

    .line 212
    throw v0

    .line 213
    :catch_19a
    move-exception v0

    .line 214
    :goto_19b
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v3, v10

    iput-wide v3, v0, Landroid/content/SyncStats;->numIoExceptions:J

    .line 215
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 216
    :catch_1a8
    move-exception v0

    .line 217
    :goto_1a9
    iget-object v1, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v3, v10

    iput-wide v3, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 218
    throw v0

    .line 219
    :catch_1b1
    move-exception v0

    .line 220
    :goto_1b2
    iget-object v1, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v3, v10

    iput-wide v3, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 221
    throw v0

    .line 222
    :catch_1ba
    move-exception v0

    .line 223
    :goto_1bb
    iget-object v1, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v1, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v3, v10

    iput-wide v3, v1, Landroid/content/SyncStats;->numParseExceptions:J

    .line 224
    new-instance v1, LFx;

    const-string v3, "Feed data contains error"

    invoke-direct {v1, v3, v0}, LFx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 225
    :catch_1ca
    move-exception v0

    .line 226
    :goto_1cb
    iget-object v1, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v1, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v3, v10

    iput-wide v3, v1, Landroid/content/SyncStats;->numIoExceptions:J

    .line 227
    throw v0

    .line 228
    :catch_1d3
    move-exception v0

    .line 229
    :goto_1d4
    iget-object v1, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v1, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v3, v10

    iput-wide v3, v1, Landroid/content/SyncStats;->numIoExceptions:J

    .line 230
    new-instance v1, LFx;

    const-string v3, "Runtime Exception"

    invoke-direct {v1, v3, v0}, LFx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1e3
    .catchall {:try_start_179 .. :try_end_1e3} :catchall_61

    .line 232
    :catchall_1e3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_36

    .line 228
    :catch_1e8
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_1d4

    .line 225
    :catch_1ec
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_1cb

    .line 222
    :catch_1f0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_1bb

    .line 219
    :catch_1f4
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_1b2

    .line 216
    :catch_1f8
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_1a9

    .line 213
    :catch_1fc
    move-exception v1

    move-object v2, v0

    goto :goto_19b

    .line 210
    :catch_1ff
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_192

    .line 207
    :catch_203
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_182

    .line 204
    :catch_208
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_179

    .line 201
    :catch_20d
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_ff

    .line 198
    :catch_212
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_52

    :cond_217
    move v4, v3

    goto/16 :goto_43
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;LTN;I)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    sget-object v5, LTQ;->a:LTX;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, LTQ;->a(Ljava/lang/String;Ljava/lang/String;LTN;ILTX;)V

    .line 101
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;LTN;ILTX;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-virtual {p0, p1}, LTQ;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    const-string v0, "FeedProcessorDriver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Feed to process: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, LTQ;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, LTQ;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_4d

    const/4 v0, 0x1

    :goto_2b
    invoke-static {v0}, LafQ;->b(Z)V

    .line 128
    iget-object v0, p0, LTQ;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 129
    iget-object v0, p0, LTQ;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, LTQ;->a:LTO;

    iget-object v4, p0, LTQ;->a:Ljava/util/concurrent/BlockingQueue;

    move-object v1, p5

    move-object v3, p2

    move v5, p4

    invoke-interface/range {v0 .. v6}, LTO;->a(LTX;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;II)LTW;

    move-result-object v0

    .line 134
    invoke-interface {v0}, LTW;->a()V

    .line 136
    iget-object v1, p0, LTQ;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    return-void

    .line 127
    :cond_4d
    const/4 v0, 0x0

    goto :goto_2b
.end method

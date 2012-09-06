.class Lcom/google/googlenav/settings/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/google/googlenav/settings/MapTileSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/MapTileSettingsActivity;Landroid/widget/EditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/google/googlenav/settings/L;->b:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    iput-object p2, p0, Lcom/google/googlenav/settings/L;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 16
    .parameter
    .parameter

    .prologue
    const-wide/32 v10, 0xea60

    const-wide/16 v2, 0x0

    const/4 v12, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 509
    .line 511
    iget-object v0, p0, Lcom/google/googlenav/settings/L;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 512
    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 514
    array-length v0, v6

    if-eq v0, v12, :cond_33

    move v0, v4

    move-wide v6, v2

    .line 524
    :goto_1d
    if-eqz v0, :cond_49

    .line 525
    iget-object v0, p0, Lcom/google/googlenav/settings/L;->b:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    const-string v1, "Bad input \"%s\", should be of format \"\\d,\\d\""

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v8, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 542
    :goto_32
    return-void

    .line 518
    :cond_33
    const/4 v0, 0x0

    :try_start_34
    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_39} :catch_44

    move-result-wide v0

    .line 519
    const/4 v7, 0x1

    :try_start_3b
    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_40} :catch_6f

    move-result-wide v2

    move-wide v6, v0

    move v0, v5

    .line 522
    goto :goto_1d

    .line 520
    :catch_44
    move-exception v0

    move-wide v0, v2

    :goto_46
    move-wide v6, v0

    move v0, v4

    .line 521
    goto :goto_1d

    .line 532
    :cond_49
    iget-object v0, p0, Lcom/google/googlenav/settings/L;->b:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    mul-long v8, v6, v10

    mul-long/2addr v10, v2

    invoke-static {v0, v8, v9, v10, v11}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Landroid/content/Context;JJ)V

    .line 537
    iget-object v0, p0, Lcom/google/googlenav/settings/L;->b:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    const-string v1, "Prefetcher is scheduled to run in %d minute(s) and repeat %d minute(s). Please keep the map in memory or this setting may be overwritten"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v4

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_32

    .line 520
    :catch_6f
    move-exception v6

    goto :goto_46
.end method

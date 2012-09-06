.class public Lk/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;)Z
    .registers 3
    .parameter

    .prologue
    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 344
    :goto_7
    return v0

    .line 341
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 342
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lk/i;->a(Landroid/view/View;)Z

    move-result v0

    goto :goto_7

    .line 344
    :cond_1b
    const/4 v0, 0x1

    goto :goto_7
.end method


# virtual methods
.method public a(Ljava/util/HashMap;Lk/k;Lcom/google/android/maps/driveabout/app/NavigationActivity;Lcom/google/android/maps/driveabout/app/cK;Lcom/google/android/maps/driveabout/app/aN;Ljava/lang/StringBuilder;)Z
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 251
    .line 255
    const-string v0, "dialog"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 256
    const-string v0, "dialog"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 257
    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->e()Lcom/google/android/maps/driveabout/app/al;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/al;->a(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    .line 258
    if-nez v1, :cond_4c

    .line 261
    const-string v1, "visible"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v1, "false"

    const-string v4, "visible"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move v0, v2

    .line 335
    :goto_33
    return v0

    .line 264
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog did not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    .line 265
    goto :goto_33

    .line 267
    :cond_4c
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    .line 268
    const-string v0, "id"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/app/Dialog;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    move v0, v4

    .line 273
    :goto_5d
    if-nez v1, :cond_8d

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, "id"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    .line 275
    goto :goto_33

    .line 270
    :cond_7f
    const-string v0, "id"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    move v0, v2

    goto :goto_5d

    .line 279
    :cond_8d
    const-string v4, "visible"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 280
    const-string v4, "true"

    const-string v5, "visible"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 281
    invoke-direct {p0, v1}, Lk/i;->a(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_b3

    if-eqz v0, :cond_b3

    move v0, v2

    .line 282
    :goto_aa
    if-eq v4, v0, :cond_b5

    .line 283
    const-string v0, "Visibility mismatch"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    .line 284
    goto :goto_33

    :cond_b3
    move v0, v3

    .line 281
    goto :goto_aa

    .line 289
    :cond_b5
    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 290
    const-string v0, "true"

    const-string v4, "enabled"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 291
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v4

    .line 292
    if-eq v0, v4, :cond_d7

    .line 293
    const-string v0, "Enabled mismatch"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    .line 294
    goto/16 :goto_33

    .line 299
    :cond_d7
    const-string v0, "selected"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 300
    const-string v0, "true"

    const-string v4, "selected"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 301
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v4

    .line 302
    if-eq v0, v4, :cond_f9

    .line 303
    const-string v0, "Selected mismatch"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    .line 304
    goto/16 :goto_33

    .line 309
    :cond_f9
    const-string v0, "checked"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_143

    .line 310
    instance-of v0, v1, Landroid/widget/Checkable;

    if-nez v0, :cond_126

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View is not Checkable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    .line 312
    goto/16 :goto_33

    .line 314
    :cond_126
    const-string v0, "true"

    const-string v4, "checked"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    move-object v0, v1

    .line 315
    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    .line 316
    if-eq v4, v0, :cond_143

    .line 317
    const-string v0, "Checked mismatch"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    .line 318
    goto/16 :goto_33

    .line 323
    :cond_143
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a9

    .line 324
    instance-of v0, v1, Landroid/widget/TextView;

    if-nez v0, :cond_170

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View is not a TextView: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    .line 326
    goto/16 :goto_33

    .line 328
    :cond_170
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    const-string v1, "\n"

    const-string v4, "\\n"

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 330
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a9

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Actual Text: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    .line 332
    goto/16 :goto_33

    :cond_1a9
    move v0, v2

    .line 335
    goto/16 :goto_33
.end method

.method public a()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 232
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dialog"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "visible"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "selected"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "checked"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "text"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public b()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 238
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    return-object v0
.end method

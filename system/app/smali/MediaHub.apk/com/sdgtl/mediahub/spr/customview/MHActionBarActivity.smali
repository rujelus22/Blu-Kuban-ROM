.class public Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;
.super Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;


# static fields
.field private static synthetic $SWITCH_TABLE$com$sdgtl$mediahub$spr$NaviManager$SCREEN:[I

.field protected static requestGotoMyMedia:Z

.field private static requestRemoveStoreScreen:Z


# instance fields
.field private SEARCH_VIEW_MAX_WIDTH:I

.field private mFromNotification:Z

.field private mNotUseActionBar:Z

.field private mSearchBy:I

.field private mSearchView:Landroid/widget/SearchView;

.field private mSearchtype:Ljava/lang/String;

.field private mSpSearchBy:Landroid/widget/Spinner;


# direct methods
.method static synthetic $SWITCH_TABLE$com$sdgtl$mediahub$spr$NaviManager$SCREEN()[I
    .registers 3

    sget-object v0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->$SWITCH_TABLE$com$sdgtl$mediahub$spr$NaviManager$SCREEN:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/sdgtl/mediahub/spr/ar;->values()[Lcom/sdgtl/mediahub/spr/ar;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->M:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_16} :catch_2b9

    :goto_16
    :try_start_16
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->b:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_1f} :catch_2b6

    :goto_1f
    :try_start_1f
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->N:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_29} :catch_2b3

    :goto_29
    :try_start_29
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->o:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_2b0

    :goto_33
    :try_start_33
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->p:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3d} :catch_2ad

    :goto_3d
    :try_start_3d
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->F:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_47} :catch_2aa

    :goto_47
    :try_start_47
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->G:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_51} :catch_2a7

    :goto_51
    :try_start_51
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->a:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_5a} :catch_2a4

    :goto_5a
    :try_start_5a
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->c:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_63} :catch_2a1

    :goto_63
    :try_start_63
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->d:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_6c} :catch_29e

    :goto_6c
    :try_start_6c
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->e:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_75} :catch_29b

    :goto_75
    :try_start_75
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->O:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_7f} :catch_298

    :goto_7f
    :try_start_7f
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->A:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_89} :catch_295

    :goto_89
    :try_start_89
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->Y:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_93} :catch_292

    :goto_93
    :try_start_93
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->r:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_9d} :catch_28f

    :goto_9d
    :try_start_9d
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->V:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a7} :catch_28c

    :goto_a7
    :try_start_a7
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->k:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_b1} :catch_289

    :goto_b1
    :try_start_b1
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->l:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_bb} :catch_286

    :goto_bb
    :try_start_bb
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->m:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bb .. :try_end_c5} :catch_283

    :goto_c5
    :try_start_c5
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->S:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c5 .. :try_end_cf} :catch_280

    :goto_cf
    :try_start_cf
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->n:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cf .. :try_end_d9} :catch_27d

    :goto_d9
    :try_start_d9
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->T:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d9 .. :try_end_e3} :catch_27a

    :goto_e3
    :try_start_e3
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->q:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e3 .. :try_end_ed} :catch_277

    :goto_ed
    :try_start_ed
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->U:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ed .. :try_end_f7} :catch_274

    :goto_f7
    :try_start_f7
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->s:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_101
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f7 .. :try_end_101} :catch_271

    :goto_101
    :try_start_101
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->t:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_10b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_101 .. :try_end_10b} :catch_26e

    :goto_10b
    :try_start_10b
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->u:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_115
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10b .. :try_end_115} :catch_26b

    :goto_115
    :try_start_115
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->v:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_11f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_115 .. :try_end_11f} :catch_268

    :goto_11f
    :try_start_11f
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->w:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_129
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11f .. :try_end_129} :catch_265

    :goto_129
    :try_start_129
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->W:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_133
    .catch Ljava/lang/NoSuchFieldError; {:try_start_129 .. :try_end_133} :catch_262

    :goto_133
    :try_start_133
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->x:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_13d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_133 .. :try_end_13d} :catch_25f

    :goto_13d
    :try_start_13d
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->y:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_147
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13d .. :try_end_147} :catch_25c

    :goto_147
    :try_start_147
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->z:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_151
    .catch Ljava/lang/NoSuchFieldError; {:try_start_147 .. :try_end_151} :catch_259

    :goto_151
    :try_start_151
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->X:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_15b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_151 .. :try_end_15b} :catch_256

    :goto_15b
    :try_start_15b
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->B:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_165
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15b .. :try_end_165} :catch_253

    :goto_165
    :try_start_165
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->Z:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_16f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_165 .. :try_end_16f} :catch_250

    :goto_16f
    :try_start_16f
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->C:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_179
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16f .. :try_end_179} :catch_24d

    :goto_179
    :try_start_179
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->D:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_183
    .catch Ljava/lang/NoSuchFieldError; {:try_start_179 .. :try_end_183} :catch_24a

    :goto_183
    :try_start_183
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->J:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_18d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_183 .. :try_end_18d} :catch_247

    :goto_18d
    :try_start_18d
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->K:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_197
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18d .. :try_end_197} :catch_244

    :goto_197
    :try_start_197
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_1a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_197 .. :try_end_1a1} :catch_241

    :goto_1a1
    :try_start_1a1
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->I:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_1ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a1 .. :try_end_1ab} :catch_23e

    :goto_1ab
    :try_start_1ab
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->E:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ab .. :try_end_1b5} :catch_23b

    :goto_1b5
    :try_start_1b5
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->aa:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_1bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b5 .. :try_end_1bf} :catch_239

    :goto_1bf
    :try_start_1bf
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->L:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_1c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1bf .. :try_end_1c9} :catch_237

    :goto_1c9
    :try_start_1c9
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->ab:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_1d3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c9 .. :try_end_1d3} :catch_235

    :goto_1d3
    :try_start_1d3
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->f:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d3 .. :try_end_1dc} :catch_233

    :goto_1dc
    :try_start_1dc
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->i:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1dc .. :try_end_1e6} :catch_231

    :goto_1e6
    :try_start_1e6
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->j:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_1f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e6 .. :try_end_1f0} :catch_22f

    :goto_1f0
    :try_start_1f0
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->P:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_1fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f0 .. :try_end_1fa} :catch_22d

    :goto_1fa
    :try_start_1fa
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->h:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_204
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1fa .. :try_end_204} :catch_22b

    :goto_204
    :try_start_204
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->R:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_20e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_204 .. :try_end_20e} :catch_229

    :goto_20e
    :try_start_20e
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->g:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_217
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20e .. :try_end_217} :catch_227

    :goto_217
    :try_start_217
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->Q:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_221
    .catch Ljava/lang/NoSuchFieldError; {:try_start_217 .. :try_end_221} :catch_225

    :goto_221
    sput-object v0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->$SWITCH_TABLE$com$sdgtl$mediahub$spr$NaviManager$SCREEN:[I

    goto/16 :goto_4

    :catch_225
    move-exception v1

    goto :goto_221

    :catch_227
    move-exception v1

    goto :goto_217

    :catch_229
    move-exception v1

    goto :goto_20e

    :catch_22b
    move-exception v1

    goto :goto_204

    :catch_22d
    move-exception v1

    goto :goto_1fa

    :catch_22f
    move-exception v1

    goto :goto_1f0

    :catch_231
    move-exception v1

    goto :goto_1e6

    :catch_233
    move-exception v1

    goto :goto_1dc

    :catch_235
    move-exception v1

    goto :goto_1d3

    :catch_237
    move-exception v1

    goto :goto_1c9

    :catch_239
    move-exception v1

    goto :goto_1bf

    :catch_23b
    move-exception v1

    goto/16 :goto_1b5

    :catch_23e
    move-exception v1

    goto/16 :goto_1ab

    :catch_241
    move-exception v1

    goto/16 :goto_1a1

    :catch_244
    move-exception v1

    goto/16 :goto_197

    :catch_247
    move-exception v1

    goto/16 :goto_18d

    :catch_24a
    move-exception v1

    goto/16 :goto_183

    :catch_24d
    move-exception v1

    goto/16 :goto_179

    :catch_250
    move-exception v1

    goto/16 :goto_16f

    :catch_253
    move-exception v1

    goto/16 :goto_165

    :catch_256
    move-exception v1

    goto/16 :goto_15b

    :catch_259
    move-exception v1

    goto/16 :goto_151

    :catch_25c
    move-exception v1

    goto/16 :goto_147

    :catch_25f
    move-exception v1

    goto/16 :goto_13d

    :catch_262
    move-exception v1

    goto/16 :goto_133

    :catch_265
    move-exception v1

    goto/16 :goto_129

    :catch_268
    move-exception v1

    goto/16 :goto_11f

    :catch_26b
    move-exception v1

    goto/16 :goto_115

    :catch_26e
    move-exception v1

    goto/16 :goto_10b

    :catch_271
    move-exception v1

    goto/16 :goto_101

    :catch_274
    move-exception v1

    goto/16 :goto_f7

    :catch_277
    move-exception v1

    goto/16 :goto_ed

    :catch_27a
    move-exception v1

    goto/16 :goto_e3

    :catch_27d
    move-exception v1

    goto/16 :goto_d9

    :catch_280
    move-exception v1

    goto/16 :goto_cf

    :catch_283
    move-exception v1

    goto/16 :goto_c5

    :catch_286
    move-exception v1

    goto/16 :goto_bb

    :catch_289
    move-exception v1

    goto/16 :goto_b1

    :catch_28c
    move-exception v1

    goto/16 :goto_a7

    :catch_28f
    move-exception v1

    goto/16 :goto_9d

    :catch_292
    move-exception v1

    goto/16 :goto_93

    :catch_295
    move-exception v1

    goto/16 :goto_89

    :catch_298
    move-exception v1

    goto/16 :goto_7f

    :catch_29b
    move-exception v1

    goto/16 :goto_75

    :catch_29e
    move-exception v1

    goto/16 :goto_6c

    :catch_2a1
    move-exception v1

    goto/16 :goto_63

    :catch_2a4
    move-exception v1

    goto/16 :goto_5a

    :catch_2a7
    move-exception v1

    goto/16 :goto_51

    :catch_2aa
    move-exception v1

    goto/16 :goto_47

    :catch_2ad
    move-exception v1

    goto/16 :goto_3d

    :catch_2b0
    move-exception v1

    goto/16 :goto_33

    :catch_2b3
    move-exception v1

    goto/16 :goto_29

    :catch_2b6
    move-exception v1

    goto/16 :goto_1f

    :catch_2b9
    move-exception v1

    goto/16 :goto_16
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->requestGotoMyMedia:Z

    sput-boolean v0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->requestRemoveStoreScreen:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;-><init>()V

    const/16 v0, 0x17e

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->SEARCH_VIEW_MAX_WIDTH:I

    const-string v0, "title"

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchtype:Ljava/lang/String;

    iput v1, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchBy:I

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mNotUseActionBar:Z

    return-void
.end method

.method static synthetic access$0(Z)V
    .registers 1

    sput-boolean p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->requestRemoveStoreScreen:Z

    return-void
.end method

.method static synthetic access$1(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;ILcom/sdgtl/mediahub/spr/ar;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->finishiActivities(ILcom/sdgtl/mediahub/spr/ar;Z)V

    return-void
.end method

.method static synthetic access$10(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->SEARCH_VIEW_MAX_WIDTH:I

    return v0
.end method

.method static synthetic access$2(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;Landroid/widget/TextView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->setSelectedTabItem(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$3(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;Landroid/widget/TextView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->setUnFocusedTabItem(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$5(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchtype:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchtype:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchBy:I

    return v0
.end method

.method static synthetic access$8(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;)Landroid/widget/SearchView;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;)Landroid/widget/Spinner;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSpSearchBy:Landroid/widget/Spinner;

    return-object v0
.end method

.method private finishiActivities(ILcom/sdgtl/mediahub/spr/ar;Z)V
    .registers 5

    if-nez p3, :cond_7

    const v0, 0x7f0d0057

    if-eq p1, v0, :cond_14

    :cond_7
    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a()Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a()Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->finish()V

    :cond_14
    if-nez p3, :cond_1b

    const v0, 0x7f0d0058

    if-eq p1, v0, :cond_42

    :cond_1b
    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a()Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a()Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->finish()V

    :cond_28
    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a()Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a()Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->finish()V

    :cond_35
    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a()Lcom/sdgtl/mediahub/spr/screen/TvStore;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a()Lcom/sdgtl/mediahub/spr/screen/TvStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->finish()V

    :cond_42
    if-nez p3, :cond_49

    const v0, 0x7f0d0059

    if-eq p1, v0, :cond_56

    :cond_49
    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a()Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a()Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->finish()V

    :cond_56
    if-nez p3, :cond_6c

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->q:Lcom/sdgtl/mediahub/spr/ar;

    if-eq p2, v0, :cond_6c

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->s:Lcom/sdgtl/mediahub/spr/ar;

    if-eq p2, v0, :cond_6c

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->A:Lcom/sdgtl/mediahub/spr/ar;

    if-eq p2, v0, :cond_6c

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->x:Lcom/sdgtl/mediahub/spr/ar;

    if-eq p2, v0, :cond_6c

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->B:Lcom/sdgtl/mediahub/spr/ar;

    if-ne p2, v0, :cond_be

    :cond_6c
    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->a()Lcom/sdgtl/mediahub/spr/screen/MyInformation;

    move-result-object v0

    if-eqz v0, :cond_79

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->a()Lcom/sdgtl/mediahub/spr/screen/MyInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyInformation;->finish()V

    :cond_79
    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a()Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    move-result-object v0

    if-eqz v0, :cond_86

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a()Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->finish()V

    :cond_86
    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a()Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    move-result-object v0

    if-eqz v0, :cond_93

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a()Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->finish()V

    :cond_93
    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->a()Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    move-result-object v0

    if-eqz v0, :cond_a0

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->a()Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->finish()V

    :cond_a0
    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->a()Lcom/sdgtl/mediahub/spr/screen/ParentalControl;

    move-result-object v0

    if-eqz v0, :cond_ad

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->a()Lcom/sdgtl/mediahub/spr/screen/ParentalControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->finish()V

    :cond_ad
    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->a()Lcom/sdgtl/mediahub/spr/screen/MyPage;

    move-result-object v0

    if-eqz v0, :cond_be

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->a(Z)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->a()Lcom/sdgtl/mediahub/spr/screen/MyPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->finish()V

    :cond_be
    return-void
.end method

.method private setMyPaymentMethodsView(Landroid/view/View;)V
    .registers 5

    const v0, 0x7f0d005f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0d0060

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v2, Lcom/sdgtl/mediahub/spr/customview/q;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/customview/q;-><init>(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setSearchView(Landroid/view/View;)V
    .registers 8

    const/4 v5, 0x1

    const/4 v1, 0x0

    const v0, 0x7f0d005d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchView:Landroid/widget/SearchView;

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mNotUseActionBar:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchView:Landroid/widget/SearchView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setVisibility(I)V

    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->setSearchViewImage(Landroid/widget/SearchView;)V

    const v0, 0x7f0d005c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSpSearchBy:Landroid/widget/Spinner;

    const/4 v0, 0x2

    new-array v2, v0, [I

    fill-array-data v2, :array_10e

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_35
    array-length v4, v2

    if-lt v0, v4, :cond_ed

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSpSearchBy:Landroid/widget/Spinner;

    const v3, 0x7f0a0108

    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSpSearchBy:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSpSearchBy:Landroid/widget/Spinner;

    new-instance v2, Lcom/sdgtl/mediahub/spr/customview/u;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/customview/u;-><init>(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchtype:Ljava/lang/String;

    if-eqz v0, :cond_fa

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchtype:Ljava/lang/String;

    const-string v2, "people"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSpSearchBy:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_74
    new-instance v0, Lcom/sdgtl/mediahub/spr/customview/v;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/customview/v;-><init>(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;)V

    new-instance v2, Lcom/sdgtl/mediahub/spr/customview/w;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/customview/w;-><init>(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchView:Landroid/widget/SearchView;

    iget v4, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->SEARCH_VIEW_MAX_WIDTH:I

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setMaxWidth(I)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v5}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchView:Landroid/widget/SearchView;

    new-instance v2, Lcom/sdgtl/mediahub/spr/customview/x;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/customview/x;-><init>(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchView:Landroid/widget/SearchView;

    new-instance v2, Lcom/sdgtl/mediahub/spr/customview/y;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/customview/y;-><init>(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/aq;->a()Lcom/sdgtl/mediahub/spr/ar;

    move-result-object v0

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->E:Lcom/sdgtl/mediahub/spr/ar;

    if-ne v0, v2, :cond_c3

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_c3

    const-string v2, "keyword"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c3

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_c3
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchView:Landroid/widget/SearchView;

    :try_start_c5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setSearchViewAnimation"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c5 .. :try_end_e5} :catch_e7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c5 .. :try_end_e5} :catch_101
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_e5} :catch_107

    goto/16 :goto_18

    :catch_e7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_18

    :cond_ed
    aget v4, v2, v0

    invoke-virtual {p0, v4}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_35

    :cond_fa
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSpSearchBy:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_74

    :catch_101
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_18

    :catch_107
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_18

    nop

    :array_10e
    .array-data 0x4
        0xbt 0x1t 0xat 0x7ft
        0xct 0x1t 0xat 0x7ft
    .end array-data
.end method

.method private setSearchViewImage(Landroid/widget/SearchView;)V
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_5f

    invoke-virtual {p1, v2}, Landroid/widget/SearchView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0200fd

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/4 v1, 0x6

    invoke-virtual {v0, v4, v3, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020121

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020120

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5f
    return-void
.end method

.method private setSelectedTabItem(Landroid/widget/TextView;)V
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    const v2, 0x7f02017a

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {p1, v0, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method private setTabBar(Landroid/app/Activity;Landroid/view/View;Lcom/sdgtl/mediahub/spr/ar;)V
    .registers 14

    const/16 v9, 0x8

    const/4 v8, 0x0

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mNotUseActionBar:Z

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    new-instance v6, Lcom/sdgtl/mediahub/spr/customview/m;

    invoke-direct {v6, p0, p3, p1}, Lcom/sdgtl/mediahub/spr/customview/m;-><init>(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;Lcom/sdgtl/mediahub/spr/ar;Landroid/app/Activity;)V

    const v0, 0x7f0d0055

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0d0056

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0d0057

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Lcom/sdgtl/mediahub/spr/customview/r;

    invoke-direct {v3, p0, p3}, Lcom/sdgtl/mediahub/spr/customview/r;-><init>(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;Lcom/sdgtl/mediahub/spr/ar;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v3, 0x7f0d0058

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Lcom/sdgtl/mediahub/spr/customview/s;

    invoke-direct {v4, p0, p3}, Lcom/sdgtl/mediahub/spr/customview/s;-><init>(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;Lcom/sdgtl/mediahub/spr/ar;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v4, 0x7f0d0059

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Lcom/sdgtl/mediahub/spr/customview/t;

    invoke-direct {v5, p0, p3}, Lcom/sdgtl/mediahub/spr/customview/t;-><init>(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;Lcom/sdgtl/mediahub/spr/ar;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v5, 0x7f0d005a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->$SWITCH_TABLE$com$sdgtl$mediahub$spr$NaviManager$SCREEN()[I

    move-result-object v6

    invoke-virtual {p3}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v7

    aget v6, v6, v7

    sparse-switch v6, :sswitch_data_9c

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    :sswitch_7b
    invoke-direct {p0, v2}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->setSelectedTabItem(Landroid/widget/TextView;)V

    goto :goto_7

    :sswitch_7f
    invoke-direct {p0, v3}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->setSelectedTabItem(Landroid/widget/TextView;)V

    goto :goto_7

    :sswitch_83
    invoke-direct {p0, v4}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->setSelectedTabItem(Landroid/widget/TextView;)V

    goto :goto_7

    :sswitch_87
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchBy:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_98

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_92
    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_98
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_92

    :sswitch_data_9c
    .sparse-switch
        0x3 -> :sswitch_7b
        0x6 -> :sswitch_7f
        0x7 -> :sswitch_7f
        0x8 -> :sswitch_7f
        0xb -> :sswitch_83
        0xe -> :sswitch_83
        0x1f -> :sswitch_87
    .end sparse-switch
.end method

.method private setUnFocusedTabItem(Landroid/widget/TextView;)V
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    const v2, 0x7f0200c5

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {p1, v0, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method protected clickMyPaymentMethods(I)V
    .registers 2

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1f

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1f

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->isIconified()Z

    move-result v1

    if-nez v1, :cond_1f

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->searchClose(Z)V

    :goto_1e
    return v0

    :cond_1f
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1e
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    const/4 v2, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_24

    :goto_7
    return-void

    :pswitch_8
    packed-switch p2, :pswitch_data_2a

    goto :goto_7

    :pswitch_c
    sput-boolean v2, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->requestGotoMyMedia:Z

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->requestRemoveStoreScreen:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->requestRemoveStoreScreen:Z

    invoke-static {}, Lcom/sdgtl/mediahub/spr/aq;->a()Lcom/sdgtl/mediahub/spr/ar;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->finishiActivities(ILcom/sdgtl/mediahub/spr/ar;Z)V

    :cond_1d
    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->k:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_7

    :pswitch_data_24
    .packed-switch 0x3
        :pswitch_8
    .end packed-switch

    :pswitch_data_2a
    .packed-switch 0x3
        :pswitch_c
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/16 v2, 0x8

    const/4 v3, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1d

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_1d
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_78

    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->setTheme(I)V

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->requestWindowFeature(I)Z

    const v0, 0x7f0a0035

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->d(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_44

    const/16 v0, 0x12c

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->SEARCH_VIEW_MAX_WIDTH:I

    :cond_44
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6d

    const-string v1, "search_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "search_by"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchBy:I

    if-eqz v1, :cond_5c

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchtype:Ljava/lang/String;

    :cond_5c
    const-string v1, "fromNotification"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mFromNotification:Z

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mFromNotification:Z

    if-eqz v0, :cond_6d

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->k:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;)V

    :cond_6d
    sget-boolean v0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->requestGotoMyMedia:Z

    if-eqz v0, :cond_78

    sput-boolean v3, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->requestGotoMyMedia:Z

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->k:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;)V

    :cond_78
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 5

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_e

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->searchClose(Z)V

    :cond_e
    invoke-super {p0, p1, p2}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 6

    const/high16 v3, 0x2

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mFromNotification:Z

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_1f

    :cond_1c
    invoke-virtual {p0, v2, v2}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->overridePendingTransition(II)V

    :cond_1f
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    :cond_8
    :goto_8
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_d
    invoke-static {}, Lcom/sdgtl/mediahub/spr/aq;->a()Lcom/sdgtl/mediahub/spr/ar;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->a:Lcom/sdgtl/mediahub/spr/ar;

    if-eq v0, v1, :cond_8

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->a:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->searchClose(Z)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->y(Landroid/content/Context;)V

    invoke-virtual {p0, v2, v2}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->overridePendingTransition(II)V

    goto :goto_8

    nop

    :pswitch_data_26
    .packed-switch 0x102002c
        :pswitch_d
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onPause()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_19

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_19
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    const v0, 0x7f0d0172

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_14
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mFromNotification:Z

    return-void
.end method

.method protected onStart()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onStart()V

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mFromNotification:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0, v1, v1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->overridePendingTransition(II)V

    :cond_b
    return-void
.end method

.method protected searchClose(Z)V
    .registers 5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_14

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    :cond_14
    return-void
.end method

.method protected setActionBar(Landroid/app/Activity;Lcom/sdgtl/mediahub/spr/ar;Z)V
    .registers 11

    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->A:Lcom/sdgtl/mediahub/spr/ar;

    if-ne p2, v0, :cond_14

    iput-boolean p3, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mNotUseActionBar:Z

    :goto_a
    invoke-static {p0, p2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_17

    :cond_13
    :goto_13
    return-void

    :cond_14
    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mNotUseActionBar:Z

    goto :goto_a

    :cond_17
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    const v0, 0x7f0a0035

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/aq;->a()Lcom/sdgtl/mediahub/spr/ar;

    move-result-object v0

    sget-object v4, Lcom/sdgtl/mediahub/spr/ar;->a:Lcom/sdgtl/mediahub/spr/ar;

    if-ne v0, v4, :cond_69

    move v0, v2

    :goto_34
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f030019

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    invoke-direct {p0, p1, v4, p2}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->setTabBar(Landroid/app/Activity;Landroid/view/View;Lcom/sdgtl/mediahub/spr/ar;)V

    const v0, 0x7f0d005b

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0d005e

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sget-object v5, Lcom/sdgtl/mediahub/spr/ar;->s:Lcom/sdgtl/mediahub/spr/ar;

    if-ne p2, v5, :cond_6b

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0, v4}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->setMyPaymentMethodsView(Landroid/view/View;)V

    goto :goto_13

    :cond_69
    move v0, v3

    goto :goto_34

    :cond_6b
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/aq;->a()Lcom/sdgtl/mediahub/spr/ar;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->E:Lcom/sdgtl/mediahub/spr/ar;

    if-ne v0, v1, :cond_7d

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchBy:I

    if-eq v0, v3, :cond_13

    :cond_7d
    invoke-direct {p0, v4}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->setSearchView(Landroid/view/View;)V

    goto :goto_13
.end method
